
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int work_task; TYPE_1__* work_queue; int state; } ;
struct taskqueue {int dummy; } ;
struct TYPE_2__ {struct taskqueue* taskqueue; } ;


 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;

 int atomic_read (int *) ;
 int taskqueue_drain (struct taskqueue*,int *) ;
 int taskqueue_poll_is_busy (struct taskqueue*,int *) ;

bool
linux_flush_work(struct work_struct *work)
{
 struct taskqueue *tq;
 bool retval;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "linux_flush_work() might sleep");

 switch (atomic_read(&work->state)) {
 case 128:
  return (0);
 default:
  tq = work->work_queue->taskqueue;
  retval = taskqueue_poll_is_busy(tq, &work->work_task);
  taskqueue_drain(tq, &work->work_task);
  return (retval);
 }
}
