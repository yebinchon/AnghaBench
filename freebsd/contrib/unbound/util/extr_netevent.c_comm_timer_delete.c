
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_timer {TYPE_1__* ev_timer; } ;
struct TYPE_2__ {int ev; } ;


 int comm_timer_disable (struct comm_timer*) ;
 int free (TYPE_1__*) ;
 int ub_event_free (int ) ;

void
comm_timer_delete(struct comm_timer* timer)
{
 if(!timer)
  return;
 comm_timer_disable(timer);



 ub_event_free(timer->ev_timer->ev);
 free(timer->ev_timer);
}
