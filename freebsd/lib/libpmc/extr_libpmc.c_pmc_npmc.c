
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_npmc; scalar_t__ pm_ncpu; } ;


 int EINVAL ;
 int ENXIO ;
 TYPE_1__ cpu_info ;
 int errno ;
 int pmc_syscall ;

int
pmc_npmc(int cpu)
{
 if (pmc_syscall == -1) {
  errno = ENXIO;
  return (-1);
 }

 if (cpu < 0 || cpu >= (int) cpu_info.pm_ncpu) {
  errno = EINVAL;
  return (-1);
 }

 return (cpu_info.pm_npmc);
}
