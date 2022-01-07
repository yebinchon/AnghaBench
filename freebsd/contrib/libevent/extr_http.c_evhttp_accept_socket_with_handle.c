
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int base; } ;
struct evconnlistener {int dummy; } ;
typedef int evutil_socket_t ;


 int LEV_OPT_CLOSE_ON_EXEC ;
 int LEV_OPT_CLOSE_ON_FREE ;
 int LEV_OPT_REUSEABLE ;
 int evconnlistener_free (struct evconnlistener*) ;
 struct evconnlistener* evconnlistener_new (int ,int *,int *,int const,int ,int ) ;
 struct evhttp_bound_socket* evhttp_bind_listener (struct evhttp*,struct evconnlistener*) ;

struct evhttp_bound_socket *
evhttp_accept_socket_with_handle(struct evhttp *http, evutil_socket_t fd)
{
 struct evhttp_bound_socket *bound;
 struct evconnlistener *listener;
 const int flags =
     LEV_OPT_REUSEABLE|LEV_OPT_CLOSE_ON_EXEC|LEV_OPT_CLOSE_ON_FREE;

 listener = evconnlistener_new(http->base, ((void*)0), ((void*)0),
     flags,
     0,
     fd);
 if (!listener)
  return (((void*)0));

 bound = evhttp_bind_listener(http, listener);
 if (!bound) {
  evconnlistener_free(listener);
  return (((void*)0));
 }
 return (bound);
}
