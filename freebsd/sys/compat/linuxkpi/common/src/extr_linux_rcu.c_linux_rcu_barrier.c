
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_epoch_head {int task; } ;


 struct linux_epoch_head linux_epoch_head ;
 int linux_synchronize_rcu () ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_fast ;

void
linux_rcu_barrier(void)
{
 struct linux_epoch_head *head;

 linux_synchronize_rcu();

 head = &linux_epoch_head;


 taskqueue_drain(taskqueue_fast, &head->task);
}
