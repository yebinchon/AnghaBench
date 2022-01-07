
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; } ;
struct kinfo_proc {int ki_pid; } ;
struct kinfo_kstack {int dummy; } ;





 struct kinfo_kstack* procstat_getkstack_sysctl (int ,unsigned int*) ;
 int warnx (char*,...) ;

struct kinfo_kstack *
procstat_getkstack(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{
 switch(procstat->type) {
 case 129:
  warnx("kvm method is not supported");
  return (((void*)0));
 case 128:
  return (procstat_getkstack_sysctl(kp->ki_pid, cntp));
 case 130:
  warnx("core method is not supported");
  return (((void*)0));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
