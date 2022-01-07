
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTR2 (int ,char*,int,int ) ;
 int KTR_SPARE2 ;
 int cpu_activeclock () ;
 int cpu_idleclock () ;
 int cpu_sleep (int ) ;
 int curcpu ;
 int sched_runnable () ;
 int spinlock_enter () ;
 int spinlock_exit () ;

void
cpu_idle(int busy)
{

 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d", busy, curcpu);
 spinlock_enter();

 if (!busy)
  cpu_idleclock();

 if (!sched_runnable())
  cpu_sleep(0);

 if (!busy)
  cpu_activeclock();

 spinlock_exit();
 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d done", busy, curcpu);
}
