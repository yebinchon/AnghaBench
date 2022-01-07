
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int evutil_socket_t ;


 struct evhttp_bound_socket* evhttp_accept_socket_with_handle (struct evhttp*,int ) ;

int
evhttp_accept_socket(struct evhttp *http, evutil_socket_t fd)
{
 struct evhttp_bound_socket *bound =
  evhttp_accept_socket_with_handle(http, fd);
 if (bound == ((void*)0))
  return (-1);
 return (0);
}
