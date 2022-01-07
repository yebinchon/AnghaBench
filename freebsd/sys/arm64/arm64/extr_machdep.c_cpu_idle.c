
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_activeclock () ;
 int cpu_idleclock () ;
 int sched_runnable () ;
 int spinlock_enter () ;
 int spinlock_exit () ;

void
cpu_idle(int busy)
{

 spinlock_enter();
 if (!busy)
  cpu_idleclock();
 if (!sched_runnable())
  __asm __volatile(
      "dsb sy \n"
      "wfi    \n");
 if (!busy)
  cpu_activeclock();
 spinlock_exit();
}
