
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_event_queue {scalar_t__* begin; scalar_t__* end; struct pt_event** queue; } ;
struct pt_event {int dummy; } ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evb_max ;
 scalar_t__ evq_max ;
 scalar_t__ pt_evq_inc (scalar_t__) ;

struct pt_event *pt_evq_dequeue(struct pt_event_queue *evq,
    enum pt_event_binding evb)
{
 uint8_t begin, end;

 if (!evq)
  return ((void*)0);

 if (evb_max <= evb)
  return ((void*)0);

 begin = evq->begin[evb];
 end = evq->end[evb];

 if (evq_max <= begin)
  return ((void*)0);

 if (evq_max <= end)
  return ((void*)0);

 if (begin == end)
  return ((void*)0);

 evq->begin[evb] = pt_evq_inc(begin);

 return &evq->queue[evb][begin];
}
