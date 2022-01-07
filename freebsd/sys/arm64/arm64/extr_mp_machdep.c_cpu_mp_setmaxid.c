
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCPU ;
 int MIN (int,int ) ;
 scalar_t__ TUNABLE_INT_FETCH (char*,int*) ;
 int arm64_bus_method ;
 int bootverbose ;
 int cpu_count_acpi () ;
 int cpu_find_cpu0_fdt ;
 int mp_maxid ;
 int mp_ncpus ;
 int ofw_cpu_early_foreach (int ,int) ;
 int printf (char*,...) ;

void
cpu_mp_setmaxid(void)
{
 int cores;

 mp_ncpus = 1;
 mp_maxid = 0;

 switch(arm64_bus_method) {
 default:
  if (bootverbose)
   printf("No CPU data, limiting to 1 core\n");
  break;
 }

 if (TUNABLE_INT_FETCH("hw.ncpu", &cores)) {
  if (cores > 0 && cores < mp_ncpus) {
   mp_ncpus = cores;
   mp_maxid = cores - 1;
  }
 }
}
