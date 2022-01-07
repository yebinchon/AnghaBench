
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int event_del (int ) ;

int
ub_event_del(struct ub_event* ev)
{
 return event_del(AS_EVENT(ev));
}
