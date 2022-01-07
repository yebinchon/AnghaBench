
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; int kd; } ;
struct kinfo_proc {int ki_pid; } ;





 int procstat_getosrel_core (int ,int*) ;
 int procstat_getosrel_kvm (int ,struct kinfo_proc*,int*) ;
 int procstat_getosrel_sysctl (int ,int*) ;
 int warnx (char*,int) ;

int
procstat_getosrel(struct procstat *procstat, struct kinfo_proc *kp, int *osrelp)
{
 switch(procstat->type) {
 case 129:
  return (procstat_getosrel_kvm(procstat->kd, kp, osrelp));
 case 128:
  return (procstat_getosrel_sysctl(kp->ki_pid, osrelp));
 case 130:
  return (procstat_getosrel_core(procstat->core, osrelp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (-1);
 }
}
