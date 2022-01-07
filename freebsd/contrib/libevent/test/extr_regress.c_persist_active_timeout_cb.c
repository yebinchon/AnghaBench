
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct persist_active_timeout_called {int n; short* events; int * tvs; } ;
typedef int evutil_socket_t ;


 int evutil_gettimeofday (int *,int *) ;

__attribute__((used)) static void
persist_active_timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 struct persist_active_timeout_called *c = arg;
 if (c->n < 15) {
  c->events[c->n] = event;
  evutil_gettimeofday(&c->tvs[c->n], ((void*)0));
  ++c->n;
 }
}
