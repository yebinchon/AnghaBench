
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int evtimer_del (int ) ;

int
ub_timer_del(struct ub_event* ev)
{
 return evtimer_del(AS_EVENT(ev));
}
