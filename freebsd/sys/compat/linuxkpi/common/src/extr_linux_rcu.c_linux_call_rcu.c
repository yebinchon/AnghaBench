
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;
struct linux_epoch_head {int lock; int task; int cb_head; } ;
struct callback_head {int func; } ;
typedef int rcu_callback_t ;


 int STAILQ_INSERT_TAIL (int *,struct callback_head*,int ) ;
 int entry ;
 struct linux_epoch_head linux_epoch_head ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_fast ;

void
linux_call_rcu(struct rcu_head *context, rcu_callback_t func)
{
 struct callback_head *rcu = (struct callback_head *)context;
 struct linux_epoch_head *head = &linux_epoch_head;

 mtx_lock(&head->lock);
 rcu->func = func;
 STAILQ_INSERT_TAIL(&head->cb_head, rcu, entry);
 taskqueue_enqueue(taskqueue_fast, &head->task);
 mtx_unlock(&head->lock);
}
