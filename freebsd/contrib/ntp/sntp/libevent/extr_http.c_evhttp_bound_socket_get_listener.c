
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {struct evconnlistener* listener; } ;
struct evconnlistener {int dummy; } ;



struct evconnlistener *
evhttp_bound_socket_get_listener(struct evhttp_bound_socket *bound)
{
 return bound->listener;
}
