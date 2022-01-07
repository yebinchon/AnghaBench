
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int event_errx (int,char*) ;
 struct evhttp_bound_socket* evhttp_bind_socket_with_handle (struct evhttp*,char*,int ) ;
 int evhttp_bound_socket_get_fd (struct evhttp_bound_socket*) ;
 struct evhttp* evhttp_new (int *) ;
 int regress_get_socket_port (int ) ;

__attribute__((used)) static struct evhttp *
http_setup(ev_uint16_t *pport)
{
 struct evhttp *myhttp;
 ev_uint16_t port;
 struct evhttp_bound_socket *sock;

 myhttp = evhttp_new(((void*)0));
 if (!myhttp)
  event_errx(1, "Could not start web server");


 sock = evhttp_bind_socket_with_handle(myhttp, "127.0.0.1", 0);
 if (!sock)
  event_errx(1, "Couldn't open web port");

 port = regress_get_socket_port(evhttp_bound_socket_get_fd(sock));

 *pport = port;
 return (myhttp);
}
