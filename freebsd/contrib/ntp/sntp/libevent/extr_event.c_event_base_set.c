
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int nactivequeues; } ;
struct event {scalar_t__ ev_flags; int ev_pri; struct event_base* ev_base; } ;


 scalar_t__ EVLIST_INIT ;
 int event_debug_assert_is_setup_ (struct event*) ;

int
event_base_set(struct event_base *base, struct event *ev)
{

 if (ev->ev_flags != EVLIST_INIT)
  return (-1);

 event_debug_assert_is_setup_(ev);

 ev->ev_base = base;
 ev->ev_pri = base->nactivequeues/2;

 return (0);
}
