
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; int kd; } ;
struct kinfo_proc {int ki_pid; } ;





 int procstat_getumask_core (int ,unsigned short*) ;
 int procstat_getumask_kvm (int ,struct kinfo_proc*,unsigned short*) ;
 int procstat_getumask_sysctl (int ,unsigned short*) ;
 int warnx (char*,int) ;

int
procstat_getumask(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned short *maskp)
{
 switch(procstat->type) {
 case 129:
  return (procstat_getumask_kvm(procstat->kd, kp, maskp));
 case 128:
  return (procstat_getumask_sysctl(kp->ki_pid, maskp));
 case 130:
  return (procstat_getumask_core(procstat->core, maskp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (-1);
 }
}
