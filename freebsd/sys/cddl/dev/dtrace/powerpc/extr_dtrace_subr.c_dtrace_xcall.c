
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ processorid_t ;
typedef int dtrace_xcall_t ;
typedef int cpuset_t ;


 int CPU_SETOF (scalar_t__,int *) ;
 scalar_t__ DTRACE_CPUALL ;
 int all_cpus ;
 int smp_no_rendezvous_barrier ;
 int smp_rendezvous_cpus (int ,int ,int ,int ,void*) ;

void
dtrace_xcall(processorid_t cpu, dtrace_xcall_t func, void *arg)
{
 cpuset_t cpus;

 if (cpu == DTRACE_CPUALL)
  cpus = all_cpus;
 else
  CPU_SETOF(cpu, &cpus);

 smp_rendezvous_cpus(cpus, smp_no_rendezvous_barrier, func,
   smp_no_rendezvous_barrier, arg);
}
