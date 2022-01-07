
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ wake_up_task (struct task_struct*,unsigned int) ;

bool
linux_wake_up_state(struct task_struct *task, unsigned int state)
{

 return (wake_up_task(task, state) != 0);
}
