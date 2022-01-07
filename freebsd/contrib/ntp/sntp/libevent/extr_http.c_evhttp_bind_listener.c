
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {struct evconnlistener* listener; } ;
struct evhttp {int sockets; } ;
struct evconnlistener {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct evhttp_bound_socket*,int ) ;
 int accept_socket_cb ;
 int evconnlistener_set_cb (struct evconnlistener*,int ,struct evhttp*) ;
 struct evhttp_bound_socket* mm_malloc (int) ;
 int next ;

struct evhttp_bound_socket *
evhttp_bind_listener(struct evhttp *http, struct evconnlistener *listener)
{
 struct evhttp_bound_socket *bound;

 bound = mm_malloc(sizeof(struct evhttp_bound_socket));
 if (bound == ((void*)0))
  return (((void*)0));

 bound->listener = listener;
 TAILQ_INSERT_TAIL(&http->sockets, bound, next);

 evconnlistener_set_cb(listener, accept_socket_cb, http);
 return bound;
}
