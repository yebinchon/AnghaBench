
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int parked; int kthread_flags; } ;


 int KTHREAD_SHOULD_PARK_MASK ;
 int atomic_or (int ,int *) ;
 int wait_for_completion (int *) ;
 int wake_up_process (struct task_struct*) ;

int
linux_kthread_park(struct task_struct *task)
{

 atomic_or(KTHREAD_SHOULD_PARK_MASK, &task->kthread_flags);
 wake_up_process(task);
 wait_for_completion(&task->parked);
 return (0);
}
