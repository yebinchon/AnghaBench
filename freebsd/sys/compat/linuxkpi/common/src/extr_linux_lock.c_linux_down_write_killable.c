
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int sx; } ;


 int EINTR ;
 int current ;
 int linux_schedule_save_interrupt_value (int ,int) ;
 int sx_xlock_sig (int *) ;

int
linux_down_write_killable(struct rw_semaphore *rw)
{
 int error;

 error = -sx_xlock_sig(&rw->sx);
 if (error != 0) {
  linux_schedule_save_interrupt_value(current, error);
  error = -EINTR;
 }
 return (error);
}
