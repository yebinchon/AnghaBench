
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_timer {void (* callback ) (void*) ;void* cb_arg; struct internal_timer* ev_timer; } ;
struct internal_timer {struct comm_timer super; int * ev; struct comm_base* base; } ;
struct comm_base {TYPE_1__* eb; } ;
struct TYPE_2__ {int base; } ;


 int UB_EV_TIMEOUT ;
 scalar_t__ calloc (int,int) ;
 int comm_timer_callback ;
 int free (struct internal_timer*) ;
 int log_err (char*) ;
 int * ub_event_new (int ,int,int ,int ,struct comm_timer*) ;

struct comm_timer*
comm_timer_create(struct comm_base* base, void (*cb)(void*), void* cb_arg)
{
 struct internal_timer *tm = (struct internal_timer*)calloc(1,
  sizeof(struct internal_timer));
 if(!tm) {
  log_err("malloc failed");
  return ((void*)0);
 }
 tm->super.ev_timer = tm;
 tm->base = base;
 tm->super.callback = cb;
 tm->super.cb_arg = cb_arg;
 tm->ev = ub_event_new(base->eb->base, -1, UB_EV_TIMEOUT,
  comm_timer_callback, &tm->super);
 if(tm->ev == ((void*)0)) {
  log_err("timer_create: event_base_set failed.");
  free(tm);
  return ((void*)0);
 }
 return &tm->super;
}
