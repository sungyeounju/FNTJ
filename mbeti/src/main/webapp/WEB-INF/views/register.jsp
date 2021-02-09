<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#mb").val()=="----"){
					alert("MBTI를 입력해주세요.");
					$("#mb").focus();
					return false;
				}
				if($("#userID").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPassword").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPassword").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("닉네임을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				if($("#userEmail").val()==""){
					alert("이메일을 입력해주세요.");
					$("#userEmail").focus();
					return false;
				}
				if($("#userBirthday").val()==""){
					alert("생일을 입력해주세요.");
					$("#userBirthday").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
	<body>
		<section id="container">
			<form action="/register" method="post">
			<div class="form-group has-feedback">
					<label class="control-label" for="mb">MBTI</label>
					<SELECT id="mb" name="mb" SIZE=1>
				        <OPTION VALUE=---- SELECTED>----</OPTION>
				        <OPTION VALUE=INTJ>INTJ</OPTION>
				        <OPTION VALUE=INTP>INTP</OPTION>
				        <OPTION VALUE=ENTJ>ENTJ</OPTION>
				        <OPTION VALUE=ENTP>ENTP</OPTION>
				        <OPTION VALUE=INFJ>INFJ</OPTION>
				        <OPTION VALUE=INFP>INFP</OPTION>
				        <OPTION VALUE=ENFJ>ENFJ</OPTION>
				        <OPTION VALUE=ENFP>ENFP</OPTION>
				        <OPTION VALUE=ISTJ>ISTJ</OPTION>
				        <OPTION VALUE=ISFJ>ISFJ</OPTION>
				        <OPTION VALUE=ESTJ>ESTJ</OPTION>
				        <OPTION VALUE=ESFJ>ESFJ</OPTION>
				        <OPTION VALUE=ISTP>ISTP</OPTION>
				        <OPTION VALUE=ISFP>ISFP</OPTION>
				        <OPTION VALUE=ESTP>ESTP</OPTION>
				        <OPTION VALUE=ESFP>ESFP</OPTION>
		    		</SELECT>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userID">아이디</label>
					<input class="form-control" type="text" id="userID" name="userID" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPassword">패스워드</label>
					<input class="form-control" type="password" id="userPassword" name="userPassword" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">닉네임</label>
					<input class="form-control" type="text" id="userName" name="userName" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userEmail">이메일</label>
					<input class="form-control" type="text" id="userEmail" name="userEmail" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userBirthday">생일(YYYY-MM-DD)</label>
					<input class="form-control" type="text" id="userBirthday" name="userBirthday" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="keyword1">키워드1</label>
					<input class="form-control" type="text" id="keyword1" name="keyword1" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="keyword2">키워드2</label>
					<input class="form-control" type="text" id="keyword2" name="keyword2" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="keyword3">키워드3</label>
					<input class="form-control" type="text" id="keyword3" name="keyword3" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="keyword4">키워드4</label>
					<input class="form-control" type="text" id="keyword4" name="keyword4" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="keyword5">키워드5</label>
					<input class="form-control" type="text" id="keyword5" name="keyword5" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원가입</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
		
	</body>
	
</html>