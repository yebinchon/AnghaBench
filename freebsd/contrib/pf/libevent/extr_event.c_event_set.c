
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event {void (* ev_callback ) (int,short,void*) ;int ev_fd; short ev_events; int ev_pri; int * ev_pncalls; scalar_t__ ev_ncalls; int ev_flags; void* ev_arg; TYPE_1__* ev_base; } ;
struct TYPE_2__ {int nactivequeues; } ;


 int EVLIST_INIT ;
 TYPE_1__* current_base ;

void
event_set(struct event *ev, int fd, short events,
   void (*callback)(int, short, void *), void *arg)
{

 ev->ev_base = current_base;

 ev->ev_callback = callback;
 ev->ev_arg = arg;
 ev->ev_fd = fd;
 ev->ev_events = events;
 ev->ev_flags = EVLIST_INIT;
 ev->ev_ncalls = 0;
 ev->ev_pncalls = ((void*)0);


 ev->ev_pri = current_base->nactivequeues/2;
}
