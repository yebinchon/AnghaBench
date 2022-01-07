
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct comm_timer {TYPE_3__* ev_timer; } ;
struct TYPE_6__ {int enabled; TYPE_2__* base; int ev; } ;
struct TYPE_5__ {TYPE_1__* eb; } ;
struct TYPE_4__ {int base; } ;


 int comm_timer_callback ;
 int comm_timer_disable (struct comm_timer*) ;
 int log_assert (struct timeval*) ;
 int log_err (char*) ;
 scalar_t__ ub_timer_add (int ,int ,int ,struct comm_timer*,struct timeval*) ;

void
comm_timer_set(struct comm_timer* timer, struct timeval* tv)
{
 log_assert(tv);
 if(timer->ev_timer->enabled)
  comm_timer_disable(timer);
 if(ub_timer_add(timer->ev_timer->ev, timer->ev_timer->base->eb->base,
  comm_timer_callback, timer, tv) != 0)
  log_err("comm_timer_set: evtimer_add failed.");
 timer->ev_timer->enabled = 1;
}
