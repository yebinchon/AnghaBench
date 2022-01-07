
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cl_timer_prov_destroy () ;
 int cl_atomic_spinlock ;
 int cl_spinlock_destroy (int *) ;

void complib_exit(void)
{
 __cl_timer_prov_destroy();
 cl_spinlock_destroy(&cl_atomic_spinlock);
}
