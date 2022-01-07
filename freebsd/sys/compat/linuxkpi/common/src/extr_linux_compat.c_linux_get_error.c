
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EINTR ;
 int ERESTART ;
 int ERESTARTSYS ;
 int linux_schedule_get_interrupt_value (struct task_struct*) ;

__attribute__((used)) static int
linux_get_error(struct task_struct *task, int error)
{

 if (error == EINTR || error == ERESTARTSYS || error == ERESTART) {
  error = -linux_schedule_get_interrupt_value(task);
  if (error == 0)
   error = EINTR;
 }
 return (error);
}
