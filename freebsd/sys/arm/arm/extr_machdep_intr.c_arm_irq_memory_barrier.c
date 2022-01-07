
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_l2cache_drain_writebuf () ;
 int dsb () ;

void
arm_irq_memory_barrier(uintptr_t irq)
{

 dsb();
 cpu_l2cache_drain_writebuf();
}
