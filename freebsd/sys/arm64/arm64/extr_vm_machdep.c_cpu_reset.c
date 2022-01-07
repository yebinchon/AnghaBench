
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int psci_reset () ;

void
cpu_reset(void)
{

 psci_reset();

 printf("cpu_reset failed");
 while(1)
  __asm volatile("wfi" ::: "memory");
}
