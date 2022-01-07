
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int linux_system_long_wq ;
 int linux_system_short_wq ;
 int * system_highpri_wq ;
 int * system_long_wq ;
 int * system_power_efficient_wq ;
 int * system_unbound_wq ;
 int * system_wq ;

__attribute__((used)) static void
linux_work_uninit(void *arg)
{
 destroy_workqueue(linux_system_short_wq);
 destroy_workqueue(linux_system_long_wq);


 system_long_wq = ((void*)0);
 system_wq = ((void*)0);
 system_power_efficient_wq = ((void*)0);
 system_unbound_wq = ((void*)0);
 system_highpri_wq = ((void*)0);
}
