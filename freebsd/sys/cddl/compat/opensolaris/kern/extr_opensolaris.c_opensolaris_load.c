
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpuid; int cpu_flags; } ;


 int CPU_ENABLE ;
 int MAXCPU ;
 int MUTEX_DEFAULT ;
 int NANOSEC ;
 int cpu_lock ;
 int hz ;
 int mutex_init (int *,char*,int ,int *) ;
 int nsec_per_tick ;
 TYPE_1__* solaris_cpu ;

__attribute__((used)) static void
opensolaris_load(void *dummy)
{
 int i;






 for (i = 0; i < MAXCPU; i++) {
  solaris_cpu[i].cpuid = i;
  solaris_cpu[i].cpu_flags &= CPU_ENABLE;
 }

 mutex_init(&cpu_lock, "OpenSolaris CPU lock", MUTEX_DEFAULT, ((void*)0));

 nsec_per_tick = NANOSEC / hz;
}
