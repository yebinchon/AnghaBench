
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event_queue {int dummy; } ;


 int memset (struct pt_event_queue*,int ,int) ;

void pt_evq_init(struct pt_event_queue *evq)
{
 if (!evq)
  return;

 memset(evq, 0, sizeof(*evq));
}
