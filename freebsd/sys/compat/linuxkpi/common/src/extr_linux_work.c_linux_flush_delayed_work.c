
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct taskqueue {int dummy; } ;
struct TYPE_4__ {int work_task; TYPE_1__* work_queue; int state; } ;
struct delayed_work {TYPE_2__ work; } ;
struct TYPE_3__ {struct taskqueue* taskqueue; } ;


 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;


 int atomic_read (int *) ;
 int linux_cancel_timer (struct delayed_work*,int) ;
 int linux_delayed_work_enqueue (struct delayed_work*) ;
 int taskqueue_drain (struct taskqueue*,int *) ;
 int taskqueue_poll_is_busy (struct taskqueue*,int *) ;

bool
linux_flush_delayed_work(struct delayed_work *dwork)
{
 struct taskqueue *tq;
 bool retval;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "linux_flush_delayed_work() might sleep");

 switch (atomic_read(&dwork->work.state)) {
 case 129:
  return (0);
 case 128:
  if (linux_cancel_timer(dwork, 1))
   linux_delayed_work_enqueue(dwork);

 default:
  tq = dwork->work.work_queue->taskqueue;
  retval = taskqueue_poll_is_busy(tq, &dwork->work.work_task);
  taskqueue_drain(tq, &dwork->work.work_task);
  return (retval);
 }
}
