
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int listener; } ;
typedef int evutil_socket_t ;


 int evconnlistener_get_fd (int ) ;

evutil_socket_t
evhttp_bound_socket_get_fd(struct evhttp_bound_socket *bound)
{
 return evconnlistener_get_fd(bound->listener);
}
