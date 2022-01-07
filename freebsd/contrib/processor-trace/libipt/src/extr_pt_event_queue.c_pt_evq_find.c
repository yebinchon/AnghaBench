
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_event_queue {scalar_t__* begin; scalar_t__* end; struct pt_event** queue; } ;
struct pt_event {int type; } ;
typedef enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;


 int evb_max ;
 scalar_t__ evq_max ;
 scalar_t__ pt_evq_inc (scalar_t__) ;

struct pt_event *pt_evq_find(struct pt_event_queue *evq,
        enum pt_event_binding evb,
        enum pt_event_type evt)
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

 for (; begin != end; begin = pt_evq_inc(begin)) {
  struct pt_event *ev;

  ev = &evq->queue[evb][begin];
  if (ev->type == evt)
   return ev;
 }

 return ((void*)0);
}
