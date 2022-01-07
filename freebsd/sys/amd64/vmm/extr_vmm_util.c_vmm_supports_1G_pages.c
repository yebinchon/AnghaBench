
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_exthigh ;
 int do_cpuid (int,unsigned int*) ;

bool
vmm_supports_1G_pages(void)
{
 unsigned int regs[4];






 if (cpu_exthigh >= 0x80000001) {
  do_cpuid(0x80000001, regs);
  if (regs[3] & (1 << 26))
   return (1);
 }
 return (0);
}
