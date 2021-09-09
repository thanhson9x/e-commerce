<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>Son Store</title>
<!-- Favicon -->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.css">
<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.min.css">
<!-- Themify Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/themify-icons.css">
<!-- Nice Select CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/niceselect.css">
<!-- Animate CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Flex Slider CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flex-slider.min.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl-carousel.css">
<!-- Slicknav -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slicknav.min.css">

<!-- Eshop StyleSheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

</head>

<body class="js">

	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- End Preloader -->

	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i> +84 123 456 789</li>
								<li><i class="ti-email"></i> support@sonstore.com</li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-7 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">

								<sec:authorize access="!isAuthenticated()">
									<li><i class="ti-location-pin"></i> Store location</li>
									<li><i class="ti-alarm-clock"></i> <a
										href="${pageContext.request.contextPath}/index/discount">Daily
											deal</a></li>
									<li><i class="ti-user"></i> <a
										href="${pageContext.request.contextPath}/register">Register</a></li>
									<li><i class="ti-power-off"></i><a
										href="${pageContext.request.contextPath}/login">Login</a></li>
								</sec:authorize>

								<sec:authorize access="hasRole('ADMIN')">
									<li><i class="ti-location-pin"></i> Store location</li>
									<li><i class="ti-alarm-clock"></i> <a
										href="${pageContext.request.contextPath}/admin/index/discount">Daily
											deal</a></li>
									<li><i class="ti-user"></i> <a
										href="${pageContext.request.contextPath}/admin/info">ADMIN</a></li>
									<li><form:form
											action="${pageContext.request.contextPath}/logout"
											method="post">
											<input class="btn animate" type="submit" value="Logout" />
										</form:form></li>
								</sec:authorize>

								<sec:authorize access="hasRole('CUSTOMER')">
									<li><i class="ti-location-pin"></i> Store location</li>
									<li><i class="ti-alarm-clock"></i> <a
										href="${pageContext.request.contextPath}/customer/index/discount">Daily
											deal</a></li>
									<li><i class="ti-user"></i> <a
										href="${pageContext.request.contextPath}/customer/info">${sessionScope.user.firstName}</a></li>
									<li><form:form
											action="${pageContext.request.contextPath}/logout"
											method="post">
											<input class="btn animate" type="submit" value="Logout" />
										</form:form></li>
								</sec:authorize>

							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">

							<sec:authorize access="!isAuthenticated()">
								<a href="${pageContext.request.contextPath}/index"><img
									src="${pageContext.request.contextPath}/images/logo.png"
									alt="logo"></a>
							</sec:authorize>

							<sec:authorize access="hasRole('ADMIN')">
								<a href="${pageContext.request.contextPath}/admin/index"><img
									src="${pageContext.request.contextPath}/images/logo.png"
									alt="logo"></a>
							</sec:authorize>

							<sec:authorize access="hasRole('CUSTOMER')">
								<a href="${pageContext.request.contextPath}/customer/index"><img
									src="${pageContext.request.contextPath}/images/logo.png"
									alt="logo"></a>
							</sec:authorize>

						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search">
								<a href="#0"><i class="ti-search"></i></a>
							</div>
							<!-- Search Form -->
							<div class="search-top">
								<form class="search-form">
									<input type="text" placeholder="Search here..." name="search">
									<button value="search" type="submit">
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>

					<!-- SEARCH HERE -->

					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">

							<sec:authorize access="!isAuthenticated()">
								<form action="${pageContext.request.contextPath}/index/search"
									method="get">
									<div class="search-bar">
										<select name="category">
											<option value="0">All Category</option>
											<c:if
												test="${listCategory ne null && listCategory.size() gt 0}">
												<c:forEach items="${listCategory }" var="item">
													<option value="${item.id }">${item.name }</option>
												</c:forEach>
											</c:if>
										</select> <input name="name" value=""
											placeholder="Search by product name..." type="search">
										<button class="btnn" value="search" type="submit">
											<i class="ti-search"></i>
										</button>
									</div>
								</form>
							</sec:authorize>

							<sec:authorize access="hasRole('ADMIN')">
								<form
									action="${pageContext.request.contextPath}/admin/index/search"
									method="get">
									<div class="search-bar">
										<select name="category">
											<option value="0">All Category</option>
											<c:if
												test="${listCategory ne null && listCategory.size() gt 0}">
												<c:forEach items="${listCategory }" var="item">
													<option value="${item.id }">${item.name }</option>
												</c:forEach>
											</c:if>
										</select> <input name="name" value=""
											placeholder="Search by product name..." type="search">
										<button class="btnn" value="search" type="submit">
											<i class="ti-search"></i>
										</button>
									</div>
								</form>
							</sec:authorize>

							<sec:authorize access="hasRole('CUSTOMER')">
								<form
									action="${pageContext.request.contextPath}/customer/index/search"
									method="get">
									<div class="search-bar">
										<select name="category">
											<option value="0">All Category</option>
											<c:if
												test="${listCategory ne null && listCategory.size() gt 0}">
												<c:forEach items="${listCategory }" var="item">
													<option value="${item.id }">${item.name }</option>
												</c:forEach>
											</c:if>
										</select> <input name="name" value=""
											placeholder="Search by product name..." type="search">
										<button class="btnn" value="search" type="submit">
											<i class="ti-search"></i>
										</button>
									</div>
								</form>
							</sec:authorize>

						</div>
					</div>

					<!-- SEARCH HERE -->

					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->

							<sec:authorize access="!isAuthenticated()">
								<div class="sinlge-bar shopping">
									<a href="${pageContext.request.contextPath}/register"
										class="single-icon"><i class="ti-bag"></i> <span
										class="total-count">2</span></a>
									<!-- Shopping Item -->
									<div class="shopping-item">
										<div class="dropdown-cart-header">
											<span>2 Items</span> <a
												href="${pageContext.request.contextPath}/register">View
												Cart</a>
										</div>
										<ul class="shopping-list">
											<li><a href="#" class="remove" title="Remove this item"><i
													class="fa fa-remove"></i></a> <a class="cart-img" href="#"><img
													src="https://via.placeholder.com/70x70" alt="#"></a>
												<h4>
													<a href="#">Woman Ring</a>
												</h4>
												<p class="quantity">
													1x - <span class="amount">$99.00</span>
												</p></li>
											<li><a href="#" class="remove" title="Remove this item"><i
													class="fa fa-remove"></i></a> <a class="cart-img" href="#"><img
													src="https://via.placeholder.com/70x70" alt="#"></a>
												<h4>
													<a href="#">Woman Necklace</a>
												</h4>
												<p class="quantity">
													1x - <span class="amount">$35.00</span>
												</p></li>
										</ul>
										<div class="bottom">
											<div class="total">
												<span>Total</span> <span class="total-amount">$134.00</span>
											</div>
											<a href="${pageContext.request.contextPath}/register"
												class="btn animate">Checkout</a>
										</div>
									</div>
									<!--/ End Shopping Item -->
								</div>
							</sec:authorize>

							<sec:authorize access="hasRole('ADMIN')">
								<div class="sinlge-bar shopping">
									<a href="${pageContext.request.contextPath}/admin/cart"
										class="single-icon"><i class="ti-bag"></i> <span
										class="total-count"> <c:choose>
												<c:when test="${sessionScope.listOrderDetails.size()>0}">${sessionScope.listOrderDetails.size()}</c:when>
												<c:otherwise>0</c:otherwise>
											</c:choose>
									</span></a>
									<!-- Shopping Item -->
									<div class="shopping-item">
										<div class="dropdown-cart-header">
											<span><c:choose>
													<c:when test="${sessionScope.listOrderDetails.size()>0}">${sessionScope.listOrderDetails.size()}</c:when>
													<c:otherwise>0</c:otherwise>
												</c:choose> Items</span> <a
												href="${pageContext.request.contextPath}/admin/cart">View
												Cart</a>
										</div>
										<ul class="shopping-list">
											<c:choose>
												<c:when
													test="${sessionScope.listOrderDetails ne null && sessionScope.listOrderDetails.size() gt 0}">
													<c:forEach items="${sessionScope.listOrderDetails }"
														var="item">
														<li><a
															href="${pageContext.request.contextPath}/admin/cart/deleteOrderDetails?id=${item.product.id }"
															class="remove" title="Remove this item"><i
																class="fa fa-remove"></i></a> <a class="cart-img"
															href="${pageContext.request.contextPath}/admin/product/${item.product.id}"><img
																src="${pageContext.request.contextPath}/${item.product.path }"
																alt="image"></a>
															<h4>
																<a
																	href="${pageContext.request.contextPath}/admin/product/${item.product.id}">${item.product.name }</a>
															</h4>
															<p class="quantity">
																${item.quantity }x - <span class="amount">$
																	${item.unitPrice }</span>
															</p></li>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<td class="text-center">Data not found!</td>
												</c:otherwise>
											</c:choose>
										</ul>
										<div class="bottom">
											<div class="total">
												<span>Total</span> <span class="total-amount">$
													${sessionScope.orderDiscountPrice }</span>
											</div>
											<a href="${pageContext.request.contextPath}/admin/checkout"
												class="btn">Checkout</a>
										</div>
									</div>
									<!--/ End Shopping Item -->
								</div>
							</sec:authorize>

							<sec:authorize access="hasRole('CUSTOMER')">
								<div class="sinlge-bar shopping">
									<a href="${pageContext.request.contextPath}/customer/cart"
										class="single-icon"><i class="ti-bag"></i> <span
										class="total-count"><c:choose>
												<c:when test="${sessionScope.listOrderDetails.size()>0}">${sessionScope.listOrderDetails.size()}</c:when>
												<c:otherwise>0</c:otherwise>
											</c:choose></span></a>
									<!-- Shopping Item -->
									<div class="shopping-item">
										<div class="dropdown-cart-header">
											<span><c:choose>
													<c:when test="${sessionScope.listOrderDetails.size()>0}">${sessionScope.listOrderDetails.size()}</c:when>
													<c:otherwise>0</c:otherwise>
												</c:choose> Items</span> <a
												href="${pageContext.request.contextPath}/customer/cart">View
												Cart</a>
										</div>
										<ul class="shopping-list">
											<c:choose>
												<c:when
													test="${sessionScope.listOrderDetails ne null && sessionScope.listOrderDetails.size() gt 0}">
													<c:forEach items="${sessionScope.listOrderDetails }"
														var="item">
														<li><a
															href="${pageContext.request.contextPath}/customer/cart/deleteOrderDetails?id=${item.product.id }"
															class="remove" title="Remove this item"><i
																class="fa fa-remove"></i></a> <a class="cart-img"
															href="${pageContext.request.contextPath}/customer/product/${item.product.id}"><img
																src="${pageContext.request.contextPath}/${item.product.path }"
																alt="image"></a>
															<h4>
																<a
																	href="${pageContext.request.contextPath}/customer/product/${item.product.id}">${item.product.name }</a>
															</h4>
															<p class="quantity">
																${item.quantity }x - <span class="amount">$
																	${item.unitPrice }</span>
															</p></li>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<td class="text-center">Data not found!</td>
												</c:otherwise>
											</c:choose>
										</ul>
										<div class="bottom">
											<div class="total">
												<span>Total</span> <span class="total-amount">$
													${sessionScope.orderDiscountPrice }</span>
											</div>
											<a
												href="${pageContext.request.contextPath}/customer/checkout"
												class="btn">Checkout</a>
										</div>
									</div>
									<!--/ End Shopping Item -->
								</div>
							</sec:authorize>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="cat-nav-head">
					<div class="row">
						<div class="col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">
										<div class="nav-inner">
											<ul class="nav main-menu menu navbar-nav">

												<sec:authorize access="!isAuthenticated()">
													<li class="active"><a
														href="${pageContext.request.contextPath}/index">Home</a></li>
													<li><a
														href="${pageContext.request.contextPath}/index/discount">SALE
															OFF</a></li>
													<li><a href="#">Blog<i class="ti-angle-down"></i></a>
														<ul class="dropdown">
															<li><a
																href="${pageContext.request.contextPath}/blog">Blog
																	Single Sidebar</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/contact">Contact
															Us</a></li>
												</sec:authorize>

												<sec:authorize access="hasRole('ADMIN')">
													<li class="active"><a
														href="${pageContext.request.contextPath}/admin/index">Home</a></li>
													<li><a
														href="${pageContext.request.contextPath}/admin/index/discount">SALE
															OFF</a></li>
													<li><a href="#">Blog<i class="ti-angle-down"></i></a>
														<ul class="dropdown">
															<li><a
																href="${pageContext.request.contextPath}/admin/blog">Blog
																	Single Sidebar</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/admin/contact">Contact
															Us</a></li>
												</sec:authorize>

												<sec:authorize access="hasRole('CUSTOMER')">
													<li class="active"><a
														href="${pageContext.request.contextPath}/customer/index">Home</a></li>
													<li><a
														href="${pageContext.request.contextPath}/customer/index/discount">SALE
															OFF</a></li>
													<li><a href="#">Blog<i class="ti-angle-down"></i></a>
														<ul class="dropdown">
															<li><a
																href="${pageContext.request.contextPath}/customer/blog">Blog
																	Single Sidebar</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/customer/contact">Contact
															Us</a></li>
												</sec:authorize>

											</ul>
										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
	<!--/ End Header -->

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">

							<sec:authorize access="!isAuthenticated()">
								<li><a href="${pageContext.request.contextPath}/index">Home<i
										class="ti-arrow-right"></i></a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/blog">Blog</a></li>
							</sec:authorize>

							<sec:authorize access="hasRole('ADMIN')">
								<li><a
									href="${pageContext.request.contextPath}/admin/index">Home<i
										class="ti-arrow-right"></i></a></li>
								<li><a href="${pageContext.request.contextPath}/admin/info">Admin<i
										class="ti-arrow-right"></i></a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/admin/blog">Blog</a></li>
							</sec:authorize>

							<sec:authorize access="hasRole('CUSTOMER')">
								<li><a
									href="${pageContext.request.contextPath}/customer/index">Home<i
										class="ti-arrow-right"></i></a></li>
								<li><a
									href="${pageContext.request.contextPath}/customer/info">${sessionScope.user.firstName}<i
										class="ti-arrow-right"></i></a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/customer/blog">Blog</a></li>
							</sec:authorize>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Start Blog Single -->
	<section class="blog-single section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-12">
					<div class="blog-single-main">
						<div class="row">
							<div class="col-12">
								<div class="image">
									<img src="https://via.placeholder.com/950x460" alt="#">
								</div>
								<div class="blog-detail">
									<h2 class="blog-title">What are the secrets to start- up
										success?</h2>
									<div class="blog-meta">
										<span class="author"><a href="#"><i
												class="fa fa-user"></i>By Admin</a><a href="#"><i
												class="fa fa-calendar"></i>August 28, 2021</a><a href="#"><i
												class="fa fa-comments"></i>Comment (15)</a></span>
									</div>
									<div class="content">
										<p>What a crazy time. I have five children in colleghigh
											school graduates.jpge or pursing post graduate studies Each
											of my children attends college far from home, the closest of
											which is more than 800 miles away. While I miss being with my
											older children, I know that a college experience can be the
											source of great growth and experience can be the source of
											source of great growth and can provide them with even greater
											in future.</p>
										<blockquote>
											<i class="fa fa-quote-left"></i> Do what you love to do and
											give it your very best. Whether it's business or baseball, or
											the theater, or any field. If you don't love what you're
											doing and you can't give it your best, get out of it. Life is
											too short. You'll be an old man before you know it. risus. Ut
											tincidunt, erat eget feugiat eleifend, eros magna dapibus
											diam.
										</blockquote>
										<p>What a crazy time. I have five children in colleghigh
											school graduates.jpge or pursing post graduate studies Each
											of my children attends college far from home, the closest of
											which is more than 800 miles away. While I miss being with my
											older children, I know that a college experience can be the
											source of great growth and experience can be the source of
											source of great growth and can provide them with even greater
											in future.</p>
										<p>What a crazy time. I have five children in colleghigh
											school graduates.jpge or pursing post graduate studies Each
											of my children attends college far from home, the closest of
											which is more than 800 miles away. While I miss being with my
											older children, I know that a college experience can be the
											source of great growth and experience can be the source of
											source of great growth and can provide them with even greater
											in future.</p>
									</div>
								</div>
								<div class="share-social">
									<div class="row">
										<div class="col-12">
											<div class="content-tags">
												<h4>Tags:</h4>
												<ul class="tag-inner">
													<li><a href="#">Glass</a></li>
													<li><a href="#">Pant</a></li>
													<li><a href="#">t-shirt</a></li>
													<li><a href="#">swater</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12">
								<div class="comments">
									<h3 class="comment-title">Comments (3)</h3>
									<!-- Single Comment -->
									<div class="single-comment">
										<img src="https://via.placeholder.com/80x80" alt="#">
										<div class="content">
											<h4>
												Alisa harm <span>At 8:59 pm On Feb 28, 2018</span>
											</h4>
											<p>Enthusiastically leverage existing premium quality
												vectors with enterprise-wide innovation collaboration
												Phosfluorescently leverage others enterprisee
												Phosfluorescently leverage.</p>
											<div class="button">
												<a href="#" class="btn"><i class="fa fa-reply"
													aria-hidden="true"></i>Reply</a>
											</div>
										</div>
									</div>
									<!-- End Single Comment -->
									<!-- Single Comment -->
									<div class="single-comment left">
										<img src="https://via.placeholder.com/80x80" alt="#">
										<div class="content">
											<h4>
												john deo <span>Feb 28, 2018 at 8:59 pm</span>
											</h4>
											<p>Enthusiastically leverage existing premium quality
												vectors with enterprise-wide innovation collaboration
												Phosfluorescently leverage others enterprisee
												Phosfluorescently leverage.</p>
											<div class="button">
												<a href="#" class="btn"><i class="fa fa-reply"
													aria-hidden="true"></i>Reply</a>
											</div>
										</div>
									</div>
									<!-- End Single Comment -->
									<!-- Single Comment -->
									<div class="single-comment">
										<img src="https://via.placeholder.com/80x80" alt="#">
										<div class="content">
											<h4>
												megan mart <span>Feb 28, 2018 at 8:59 pm</span>
											</h4>
											<p>Enthusiastically leverage existing premium quality
												vectors with enterprise-wide innovation collaboration
												Phosfluorescently leverage others enterprisee
												Phosfluorescently leverage.</p>
											<div class="button">
												<a href="#" class="btn"><i class="fa fa-reply"
													aria-hidden="true"></i>Reply</a>
											</div>
										</div>
									</div>
									<!-- End Single Comment -->
								</div>
							</div>
							<div class="col-12">
								<div class="reply">
									<div class="reply-head">
										<h2 class="reply-title">Leave a Comment</h2>
										<!-- Comment Form -->
										<form class="form" action="#">
											<div class="row">
												<div class="col-lg-6 col-md-6 col-12">
													<div class="form-group">
														<label>Your Name<span>*</span></label> <input type="text"
															name="name" placeholder="" required="required">
													</div>
												</div>
												<div class="col-lg-6 col-md-6 col-12">
													<div class="form-group">
														<label>Your Email<span>*</span></label> <input
															type="email" name="email" placeholder=""
															required="required">
													</div>
												</div>
												<div class="col-12">
													<div class="form-group">
														<label>Your Message<span>*</span></label>
														<textarea name="message" placeholder=""></textarea>
													</div>
												</div>
												<div class="col-12">
													<div class="form-group button">
														<button type="submit" class="btn">Post comment</button>
													</div>
												</div>
											</div>
										</form>
										<!-- End Comment Form -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-12">
					<div class="main-sidebar">
						<!-- Single Widget -->
						<div class="single-widget search">
							<div class="form">
								<input type="email" placeholder="Search Here..."> <a
									class="button" href="#"><i class="fa fa-search"></i></a>
							</div>
						</div>
						<!--/ End Single Widget -->
						<!-- Single Widget -->
						<div class="single-widget category">
							<h3 class="title">Blog Categories</h3>
							<ul class="categor-list">
								<li><a href="#">Men's Apparel</a></li>
								<li><a href="#">Women's Apparel</a></li>
								<li><a href="#">Bags Collection</a></li>
								<li><a href="#">Accessories</a></li>
								<li><a href="#">Sun Glasses</a></li>
							</ul>
						</div>
						<!--/ End Single Widget -->
						<!-- Single Widget -->
						<div class="single-widget recent-post">
							<h3 class="title">Recent post</h3>
							<!-- Single Post -->
							<div class="single-post">
								<div class="image">
									<img src="https://via.placeholder.com/100x100" alt="#">
								</div>
								<div class="content">
									<h5>
										<a href="#">Top 10 Beautyful Women Dress in the world</a>
									</h5>
									<ul class="comment">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>Jan
											11, 2020</li>
										<li><i class="fa fa-commenting-o" aria-hidden="true"></i>35</li>
									</ul>
								</div>
							</div>
							<!-- End Single Post -->
							<!-- Single Post -->
							<div class="single-post">
								<div class="image">
									<img src="https://via.placeholder.com/100x100" alt="#">
								</div>
								<div class="content">
									<h5>
										<a href="#">Top 10 Beautyful Women Dress in the world</a>
									</h5>
									<ul class="comment">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>Mar
											05, 2019</li>
										<li><i class="fa fa-commenting-o" aria-hidden="true"></i>59</li>
									</ul>
								</div>
							</div>
							<!-- End Single Post -->
							<!-- Single Post -->
							<div class="single-post">
								<div class="image">
									<img src="https://via.placeholder.com/100x100" alt="#">
								</div>
								<div class="content">
									<h5>
										<a href="#">Top 10 Beautyful Women Dress in the world</a>
									</h5>
									<ul class="comment">
										<li><i class="fa fa-calendar" aria-hidden="true"></i>June
											09, 2019</li>
										<li><i class="fa fa-commenting-o" aria-hidden="true"></i>44</li>
									</ul>
								</div>
							</div>
							<!-- End Single Post -->
						</div>
						<!--/ End Single Widget -->
						<!-- Single Widget -->
						<!--/ End Single Widget -->
						<!-- Single Widget -->
						<div class="single-widget side-tags">
							<h3 class="title">Tags</h3>
							<ul class="tag">
								<li><a href="#">business</a></li>
								<li><a href="#">wordpress</a></li>
								<li><a href="#">html</a></li>
								<li><a href="#">multipurpose</a></li>
								<li><a href="#">education</a></li>
								<li><a href="#">template</a></li>
								<li><a href="#">Ecommerce</a></li>
							</ul>
						</div>
						<!--/ End Single Widget -->
						<!-- Single Widget -->
						<div class="single-widget newsletter">
							<h3 class="title">Newslatter</h3>
							<div class="letter-inner">
								<h4>
									Subscribe - get news <br> latest updates.
								</h4>
								<div class="form-inner">
									<input type="email" placeholder="Enter your email"> <a
										href="#">Submit</a>
								</div>
							</div>
						</div>
						<!--/ End Single Widget -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Blog Single -->

	<!-- Start Footer Area -->
	<footer class="footer">
		<!-- Footer Top -->
		<div class="footer-top section">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer about">
							<div class="logo">

								<sec:authorize access="!isAuthenticated()">
									<a href="${pageContext.request.contextPath}/index"><img
										src="${pageContext.request.contextPath}/images/logo2.png"
										alt="logo2"></a>
								</sec:authorize>

								<sec:authorize access="hasRole('ADMIN')">
									<a href="${pageContext.request.contextPath}/admin/index"><img
										src="${pageContext.request.contextPath}/images/logo2.png"
										alt="logo2"></a>
								</sec:authorize>

								<sec:authorize access="hasRole('CUSTOMER')">
									<a href="${pageContext.request.contextPath}/customer/index"><img
										src="${pageContext.request.contextPath}/images/logo2.png"
										alt="logo2"></a>
								</sec:authorize>

							</div>
							<p class="text">Praesent dapibus, neque id cursus ucibus,
								tortor neque egestas augue, magna eros eu erat. Aliquam erat
								volutpat. Nam dui mi, tincidunt quis, accumsan porttitor,
								facilisis luctus, metus.</p>
							<p class="call">
								Got Question? Call us 24/7<span><a href="tel:123456789">+0123
										456 789</a></span>
							</p>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Information</h4>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Faq</a></li>
								<li><a href="#">Terms - Conditions</a></li>

								<sec:authorize access="!isAuthenticated()">
									<li><a href="${pageContext.request.contextPath}/contact">Contact
											Us</a></li>
								</sec:authorize>

								<sec:authorize access="hasRole('ADMIN')">
									<li><a
										href="${pageContext.request.contextPath}/admin/contact">Contact
											Us</a></li>
								</sec:authorize>

								<sec:authorize access="hasRole('CUSTOMER')">
									<li><a
										href="${pageContext.request.contextPath}/customer/contact">Contact
											Us</a></li>
								</sec:authorize>

								<li><a href="#">Help</a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Customer Service</h4>
							<ul>
								<li><a href="#">Payment Methods</a></li>
								<li><a href="#">Money-back</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer social">
							<h4>Get In Tuch</h4>
							<!-- Single Widget -->
							<div class="contact">
								<ul>
									<li>115 Nguyen Van Linh, Nam Duong, Hai Chau</li>
									<li>Da Nang</li>
									<li>info@sonstore.com</li>
									<li>+84 123 456 789</li>
								</ul>
							</div>
							<!-- End Single Widget -->
							<ul>
								<li><a href="#"><i class="ti-facebook"></i></a></li>
								<li><a href="#"><i class="ti-twitter"></i></a></li>
								<li><a href="#"><i class="ti-flickr"></i></a></li>
								<li><a href="#"><i class="ti-instagram"></i></a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Top -->
		<div class="copyright">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="left">
								<p>
									Copyright © 2021 <a href="http://www.soncorporation.com"
										target="_blank">Son Corporation</a> - All Rights Reserved.
								</p>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="right">
								<img
									src="${pageContext.request.contextPath}/images/payments.png"
									alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- /End Footer Area -->

	<!-- Jquery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery-migrate-3.0.0.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="${pageContext.request.contextPath}/js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="${pageContext.request.contextPath}/js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="${pageContext.request.contextPath}/js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="${pageContext.request.contextPath}/js/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="${pageContext.request.contextPath}/js/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script
		src="${pageContext.request.contextPath}/js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="${pageContext.request.contextPath}/js/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="${pageContext.request.contextPath}/js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="${pageContext.request.contextPath}/js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="${pageContext.request.contextPath}/js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="${pageContext.request.contextPath}/js/easing.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js/active.js"></script>

</body>
</html>