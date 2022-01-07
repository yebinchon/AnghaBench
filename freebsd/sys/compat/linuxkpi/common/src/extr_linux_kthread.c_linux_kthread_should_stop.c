
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kthread_flags; } ;


 int KTHREAD_SHOULD_STOP_MASK ;
 int atomic_read (int *) ;
 TYPE_1__* current ;

bool
linux_kthread_should_stop(void)
{

 return (atomic_read(&current->kthread_flags) & KTHREAD_SHOULD_STOP_MASK);
}
