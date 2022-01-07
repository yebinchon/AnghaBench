
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCPU_GET (int ) ;
 int cpu_initclocks_ap () ;
 int cpu_initclocks_bsp () ;
 int cpuid ;

void
cpu_initclocks(void)
{







 cpu_initclocks_bsp();

}
