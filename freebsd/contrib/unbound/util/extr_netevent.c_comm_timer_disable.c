
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_timer {TYPE_1__* ev_timer; } ;
struct TYPE_2__ {scalar_t__ enabled; int ev; } ;


 int ub_timer_del (int ) ;

void
comm_timer_disable(struct comm_timer* timer)
{
 if(!timer)
  return;
 ub_timer_del(timer->ev_timer->ev);
 timer->ev_timer->enabled = 0;
}
