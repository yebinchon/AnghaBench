
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 struct evhttp_bound_socket* evhttp_bind_socket_with_handle (struct evhttp*,char const*,int ) ;

int
evhttp_bind_socket(struct evhttp *http, const char *address, ev_uint16_t port)
{
 struct evhttp_bound_socket *bound =
  evhttp_bind_socket_with_handle(http, address, port);
 if (bound == ((void*)0))
  return (-1);
 return (0);
}
