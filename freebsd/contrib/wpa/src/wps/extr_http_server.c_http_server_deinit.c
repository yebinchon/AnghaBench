
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_server {scalar_t__ fd; int requests; } ;


 int EVENT_TYPE_READ ;
 int close (scalar_t__) ;
 int eloop_unregister_sock (scalar_t__,int ) ;
 int http_request_free_all (int ) ;
 int os_free (struct http_server*) ;

void http_server_deinit(struct http_server *srv)
{
 if (srv == ((void*)0))
  return;
 if (srv->fd >= 0) {
  eloop_unregister_sock(srv->fd, EVENT_TYPE_READ);
  close(srv->fd);
 }
 http_request_free_all(srv->requests);

 os_free(srv);
}
