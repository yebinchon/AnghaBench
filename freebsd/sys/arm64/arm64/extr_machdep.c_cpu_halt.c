
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intr_disable () ;

void
cpu_halt(void)
{


 intr_disable();
 while (1) {
  __asm __volatile("wfi");
 }
}
