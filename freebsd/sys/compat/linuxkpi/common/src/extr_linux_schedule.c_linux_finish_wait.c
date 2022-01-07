
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int task_list; } ;
typedef TYPE_1__ wait_queue_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ wait_queue_head_t ;


 int INIT_LIST_HEAD (int *) ;
 int TASK_RUNNING ;
 int __remove_wait_queue (TYPE_2__*,TYPE_1__*) ;
 int current ;
 int list_empty (int *) ;
 int set_task_state (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
linux_finish_wait(wait_queue_head_t *wqh, wait_queue_t *wq)
{

 spin_lock(&wqh->lock);
 set_task_state(current, TASK_RUNNING);
 if (!list_empty(&wq->task_list)) {
  __remove_wait_queue(wqh, wq);
  INIT_LIST_HEAD(&wq->task_list);
 }
 spin_unlock(&wqh->lock);
}
