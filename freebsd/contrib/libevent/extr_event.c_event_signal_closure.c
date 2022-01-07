
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int event_break; } ;
struct event {short ev_ncalls; short* ev_pncalls; int ev_arg; int ev_res; int ev_fd; int (* ev_callback ) (int ,int ,int ) ;} ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int stub1 (int ,int ,int ) ;
 int th_base_lock ;

__attribute__((used)) static inline void
event_signal_closure(struct event_base *base, struct event *ev)
{
 short ncalls;
 int should_break;


 ncalls = ev->ev_ncalls;
 if (ncalls != 0)
  ev->ev_pncalls = &ncalls;
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 while (ncalls) {
  ncalls--;
  ev->ev_ncalls = ncalls;
  if (ncalls == 0)
   ev->ev_pncalls = ((void*)0);
  (*ev->ev_callback)(ev->ev_fd, ev->ev_res, ev->ev_arg);

  EVBASE_ACQUIRE_LOCK(base, th_base_lock);
  should_break = base->event_break;
  EVBASE_RELEASE_LOCK(base, th_base_lock);

  if (should_break) {
   if (ncalls != 0)
    ev->ev_pncalls = ((void*)0);
   return;
  }
 }
}
