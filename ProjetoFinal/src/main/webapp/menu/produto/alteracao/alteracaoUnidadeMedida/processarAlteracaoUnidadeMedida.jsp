<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="Util.MySQL" %>
<%@ page import="controller.produto.UnidadeMedidaController" %>
<%@ page import="model.produto.UnidadeMedida" %>
	
	<%
		String id = request.getParameter("id");
		String descricao = request.getParameter("descricao");
		String sigla = request.getParameter("sigla");
		
		MySQL dbConnection = new MySQL();
		UnidadeMedidaController unidadeMedidaController = new UnidadeMedidaController(dbConnection);
		
		UnidadeMedida unidadeMedida = new UnidadeMedida();
		unidadeMedida.setDescricao(descricao);
		unidadeMedida.setSigla(sigla);
	
		if (unidadeMedidaController.editar(Long.parseLong(id),unidadeMedida)) {
		    response.sendRedirect("http://localhost:8080/ProjetoFinal/menu/produto/unidadesMedida.jsp");
		}
		
	%>