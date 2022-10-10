<%@page import="java.util.List"%>
<%@page import="com.tech.toolbox.entities.Post"%>
<%@page import="com.tech.toolbox.helper.ConnectionProvider"%>
<%@page import="com.tech.toolbox.dao.PostDao"%>

<div class="row">
<%

PostDao d= new PostDao(ConnectionProvider.getConnection());
List<Post> post=d.getAllPosts();


for(Post p: post)
{


%>
<div class="col-md-6">
    
    <div class="card">
        
        
        <div class="card-body">
            <img class="card-img-top" src="blog_pics/<%= p.getpPic()%>" alt="Card image cap"> 
            <b><%= p.getpTitle() %></b>
            <p><%= p.getpContent()%></p>
            <pre><%= p.getpCode()%></pre>
            
        </div>
        
        
    </div>    
    
</div>
            



<%

}


%>
</div>