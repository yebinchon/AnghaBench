
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* alloc_workqueue (char*,int ,int) ;
 int linux_default_wq_cpus ;
 void* linux_system_long_wq ;
 void* linux_system_short_wq ;
 int mp_ncpus ;
 void* system_highpri_wq ;
 void* system_long_wq ;
 void* system_power_efficient_wq ;
 void* system_unbound_wq ;
 void* system_wq ;

__attribute__((used)) static void
linux_work_init(void *arg)
{
 int max_wq_cpus = mp_ncpus + 1;


 if (max_wq_cpus < 4)
  max_wq_cpus = 4;


 linux_default_wq_cpus = max_wq_cpus;

 linux_system_short_wq = alloc_workqueue("linuxkpi_short_wq", 0, max_wq_cpus);
 linux_system_long_wq = alloc_workqueue("linuxkpi_long_wq", 0, max_wq_cpus);


 system_long_wq = linux_system_long_wq;
 system_wq = linux_system_short_wq;
 system_power_efficient_wq = linux_system_short_wq;
 system_unbound_wq = linux_system_short_wq;
 system_highpri_wq = linux_system_short_wq;
}
