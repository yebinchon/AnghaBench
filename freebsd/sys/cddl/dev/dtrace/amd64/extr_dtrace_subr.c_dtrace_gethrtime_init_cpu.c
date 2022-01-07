
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t curcpu ;
 void* hst_cpu_tsc ;
 void* rdtsc () ;
 void* tgt_cpu_tsc ;

__attribute__((used)) static void
dtrace_gethrtime_init_cpu(void *arg)
{
 uintptr_t cpu = (uintptr_t) arg;

 if (cpu == curcpu)
  tgt_cpu_tsc = rdtsc();
 else
  hst_cpu_tsc = rdtsc();
}
