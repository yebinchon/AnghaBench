
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int wake_up_sleepers (int *) ;

void
linux_wake_up_atomic_t(atomic_t *a)
{

 wake_up_sleepers(a);
}
