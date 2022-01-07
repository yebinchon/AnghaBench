
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpt_task {int task; } ;
struct TYPE_2__ {scalar_t__ buses_to_config; int buses_config_done; } ;


 int M_CAMXPT ;
 int M_NOWAIT ;
 int TASK_INIT (int *,int ,int ,struct xpt_task*) ;
 struct xpt_task* malloc (int,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int xpt_finishconfig_task ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 TYPE_1__ xsoftc ;

void
xpt_release_boot(void)
{
 xpt_lock_buses();
 xsoftc.buses_to_config--;
 if (xsoftc.buses_to_config == 0 && xsoftc.buses_config_done == 0) {
  struct xpt_task *task;

  xsoftc.buses_config_done = 1;
  xpt_unlock_buses();

  task = malloc(sizeof(struct xpt_task), M_CAMXPT, M_NOWAIT);
  if (task != ((void*)0)) {
   TASK_INIT(&task->task, 0, xpt_finishconfig_task, task);
   taskqueue_enqueue(taskqueue_thread, &task->task);
  }
 } else
  xpt_unlock_buses();
}
