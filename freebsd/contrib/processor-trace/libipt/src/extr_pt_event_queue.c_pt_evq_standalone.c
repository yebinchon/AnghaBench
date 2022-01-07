
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event_queue {int standalone; } ;
struct pt_event {int dummy; } ;


 struct pt_event* pt_event_init (int *) ;

struct pt_event *pt_evq_standalone(struct pt_event_queue *evq)
{
 if (!evq)
  return ((void*)0);

 return pt_event_init(&evq->standalone);
}
