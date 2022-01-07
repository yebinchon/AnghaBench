
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_cpuinfo {int dummy; } ;


 int ENXIO ;
 struct pmc_cpuinfo cpu_info ;
 int errno ;
 int pmc_syscall ;

int
pmc_cpuinfo(const struct pmc_cpuinfo **pci)
{
 if (pmc_syscall == -1) {
  errno = ENXIO;
  return (-1);
 }

 *pci = &cpu_info;
 return (0);
}
