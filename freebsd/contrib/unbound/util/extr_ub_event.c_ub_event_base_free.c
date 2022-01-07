
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;


 int AS_EVENT_BASE (struct ub_event_base*) ;
 int event_base_free (int ) ;

void
ub_event_base_free(struct ub_event_base* base)
{
 (void)base;

}
