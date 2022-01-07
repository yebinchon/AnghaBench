
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int work_task; TYPE_1__* work_queue; int state; } ;
struct taskqueue {int dummy; } ;
struct TYPE_2__ {struct taskqueue* taskqueue; } ;




 int atomic_read (int *) ;
 int taskqueue_poll_is_busy (struct taskqueue*,int *) ;

bool
linux_work_busy(struct work_struct *work)
{
 struct taskqueue *tq;

 switch (atomic_read(&work->state)) {
 case 128:
  return (0);
 case 129:
  tq = work->work_queue->taskqueue;
  return (taskqueue_poll_is_busy(tq, &work->work_task));
 default:
  return (1);
 }
}
