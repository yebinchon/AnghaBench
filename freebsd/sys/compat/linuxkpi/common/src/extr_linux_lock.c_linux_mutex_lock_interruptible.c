
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sx; } ;
typedef TYPE_1__ mutex_t ;


 int EINTR ;
 int current ;
 int linux_schedule_save_interrupt_value (int ,int) ;
 int sx_xlock_sig (int *) ;

int
linux_mutex_lock_interruptible(mutex_t *m)
{
 int error;

 error = -sx_xlock_sig(&m->sx);
 if (error != 0) {
  linux_schedule_save_interrupt_value(current, error);
  error = -EINTR;
 }
 return (error);
}
