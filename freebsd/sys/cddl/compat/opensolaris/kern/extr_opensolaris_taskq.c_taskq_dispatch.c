
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int taskqid_t ;
struct TYPE_6__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;
struct TYPE_7__ {int tqent_task; void* tqent_arg; int tqent_func; } ;
typedef TYPE_2__ taskq_ent_t ;
typedef int task_func_t ;


 int M_NOWAIT ;
 int M_WAITOK ;
 int TASK_INIT (int *,int,int ,TYPE_2__*) ;
 int TQ_FRONT ;
 int TQ_NOQUEUE ;
 int TQ_SLEEP ;
 int taskq_run ;
 int taskq_zone ;
 int taskqueue_enqueue (int ,int *) ;
 TYPE_2__* uma_zalloc (int ,int) ;

taskqid_t
taskq_dispatch(taskq_t *tq, task_func_t func, void *arg, uint_t flags)
{
 taskq_ent_t *task;
 int mflag, prio;

 if ((flags & (TQ_SLEEP | TQ_NOQUEUE)) == TQ_SLEEP)
  mflag = M_WAITOK;
 else
  mflag = M_NOWAIT;




 prio = !!(flags & TQ_FRONT);

 task = uma_zalloc(taskq_zone, mflag);
 if (task == ((void*)0))
  return (0);

 task->tqent_func = func;
 task->tqent_arg = arg;

 TASK_INIT(&task->tqent_task, prio, taskq_run, task);
 taskqueue_enqueue(tq->tq_queue, &task->tqent_task);

 return ((taskqid_t)(void *)task);
}
