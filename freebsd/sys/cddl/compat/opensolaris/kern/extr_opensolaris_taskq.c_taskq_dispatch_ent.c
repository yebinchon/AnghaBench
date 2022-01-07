
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;
struct TYPE_7__ {int tqent_task; void* tqent_arg; int tqent_func; } ;
typedef TYPE_2__ taskq_ent_t ;
typedef int task_func_t ;


 int TASK_INIT (int *,int,int ,TYPE_2__*) ;
 int TQ_FRONT ;
 int taskq_run_ent ;
 int taskqueue_enqueue (int ,int *) ;

void
taskq_dispatch_ent(taskq_t *tq, task_func_t func, void *arg, u_int flags,
    taskq_ent_t *task)
{
 int prio;





 prio = !!(flags & TQ_FRONT);

 task->tqent_func = func;
 task->tqent_arg = arg;

 TASK_INIT(&task->tqent_task, prio, taskq_run_ent, task);
 taskqueue_enqueue(tq->tq_queue, &task->tqent_task);
}
