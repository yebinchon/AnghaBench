
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int ev_flags; int ev_res; short ev_ncalls; int ev_base; int * ev_pncalls; } ;


 int EVLIST_ACTIVE ;
 int event_queue_insert (int ,struct event*,int) ;

void
event_active(struct event *ev, int res, short ncalls)
{

 if (ev->ev_flags & EVLIST_ACTIVE) {
  ev->ev_res |= res;
  return;
 }

 ev->ev_res = res;
 ev->ev_ncalls = ncalls;
 ev->ev_pncalls = ((void*)0);
 event_queue_insert(ev->ev_base, ev, EVLIST_ACTIVE);
}
