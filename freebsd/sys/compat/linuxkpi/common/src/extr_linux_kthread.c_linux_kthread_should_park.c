
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int kthread_flags; } ;


 int KTHREAD_SHOULD_PARK_MASK ;
 int atomic_read (int *) ;
 struct task_struct* current ;

bool
linux_kthread_should_park(void)
{
 struct task_struct *task;

 task = current;
 return (atomic_read(&task->kthread_flags) & KTHREAD_SHOULD_PARK_MASK);
}
