
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_list {int dummy; } ;
struct event_base {int nactivequeues; struct event_list** activequeues; int event_count_active; } ;
struct event {short ev_ncalls; short* ev_pncalls; int ev_arg; int ev_res; scalar_t__ ev_fd; int (* ev_callback ) (int,int ,int ) ;} ;


 int EVLIST_ACTIVE ;
 struct event* TAILQ_FIRST (struct event_list*) ;
 int assert (int ) ;
 scalar_t__ event_gotsig ;
 int event_queue_remove (struct event_base*,struct event*,int ) ;
 int stub1 (int,int ,int ) ;

__attribute__((used)) static void
event_process_active(struct event_base *base)
{
 struct event *ev;
 struct event_list *activeq = ((void*)0);
 int i;
 short ncalls;

 if (!base->event_count_active)
  return;

 for (i = 0; i < base->nactivequeues; ++i) {
  if (TAILQ_FIRST(base->activequeues[i]) != ((void*)0)) {
   activeq = base->activequeues[i];
   break;
  }
 }

 assert(activeq != ((void*)0));

 for (ev = TAILQ_FIRST(activeq); ev; ev = TAILQ_FIRST(activeq)) {
  event_queue_remove(base, ev, EVLIST_ACTIVE);


  ncalls = ev->ev_ncalls;
  ev->ev_pncalls = &ncalls;
  while (ncalls) {
   ncalls--;
   ev->ev_ncalls = ncalls;
   (*ev->ev_callback)((int)ev->ev_fd, ev->ev_res, ev->ev_arg);
   if (event_gotsig)
    return;
  }
 }
}
