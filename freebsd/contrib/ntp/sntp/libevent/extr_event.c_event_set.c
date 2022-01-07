
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int EVUTIL_ASSERT (int) ;
 int current_base ;
 int event_assign (struct event*,int ,int ,short,void (*) (int ,short,void*),void*) ;

void
event_set(struct event *ev, evutil_socket_t fd, short events,
   void (*callback)(evutil_socket_t, short, void *), void *arg)
{
 int r;
 r = event_assign(ev, current_base, fd, events, callback, arg);
 EVUTIL_ASSERT(r == 0);
}
