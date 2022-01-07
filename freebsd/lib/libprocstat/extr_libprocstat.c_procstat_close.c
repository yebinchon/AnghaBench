
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {scalar_t__ type; int core; int kd; } ;


 scalar_t__ PROCSTAT_CORE ;
 scalar_t__ PROCSTAT_KVM ;
 int assert (struct procstat*) ;
 int free (struct procstat*) ;
 int kvm_close (int ) ;
 int procstat_core_close (int ) ;
 int procstat_freeargv (struct procstat*) ;
 int procstat_freeenvv (struct procstat*) ;

void
procstat_close(struct procstat *procstat)
{

 assert(procstat);
 if (procstat->type == PROCSTAT_KVM)
  kvm_close(procstat->kd);
 else if (procstat->type == PROCSTAT_CORE)
  procstat_core_close(procstat->core);
 procstat_freeargv(procstat);
 procstat_freeenvv(procstat);
 free(procstat);
}
