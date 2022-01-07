
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event_queue {scalar_t__* end; scalar_t__* begin; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evb_max ;
 int pte_internal ;

int pt_evq_clear(struct pt_event_queue *evq, enum pt_event_binding evb)
{
 if (!evq)
  return -pte_internal;

 if (evb_max <= evb)
  return -pte_internal;

 evq->begin[evb] = 0;
 evq->end[evb] = 0;

 return 0;
}
