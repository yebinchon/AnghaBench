
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int free (int ) ;

void
ub_event_free(struct ub_event* ev)
{
 if (ev)
  free(AS_EVENT(ev));
}
