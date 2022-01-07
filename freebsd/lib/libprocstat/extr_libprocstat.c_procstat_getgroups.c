
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; int kd; } ;
struct kinfo_proc {int ki_pid; } ;
typedef int gid_t ;





 int * procstat_getgroups_core (int ,unsigned int*) ;
 int * procstat_getgroups_kvm (int ,struct kinfo_proc*,unsigned int*) ;
 int * procstat_getgroups_sysctl (int ,unsigned int*) ;
 int warnx (char*,int) ;

gid_t *
procstat_getgroups(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{
 switch(procstat->type) {
 case 129:
  return (procstat_getgroups_kvm(procstat->kd, kp, cntp));
 case 128:
  return (procstat_getgroups_sysctl(kp->ki_pid, cntp));
 case 130:
  return (procstat_getgroups_core(procstat->core, cntp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
