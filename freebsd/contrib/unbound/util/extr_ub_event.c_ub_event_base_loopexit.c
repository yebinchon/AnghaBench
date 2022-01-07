
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;


 int AS_EVENT_BASE (struct ub_event_base*) ;
 int event_base_loopexit (int ,int *) ;

int
ub_event_base_loopexit(struct ub_event_base* base)
{
 return event_base_loopexit(AS_EVENT_BASE(base), ((void*)0));
}
