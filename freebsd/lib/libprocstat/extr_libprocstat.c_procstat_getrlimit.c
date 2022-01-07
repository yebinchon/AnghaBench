
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
struct procstat {int type; int core; int kd; } ;
struct kinfo_proc {int ki_pid; } ;





 int procstat_getrlimit_core (int ,int,struct rlimit*) ;
 int procstat_getrlimit_kvm (int ,struct kinfo_proc*,int,struct rlimit*) ;
 int procstat_getrlimit_sysctl (int ,int,struct rlimit*) ;
 int warnx (char*,int) ;

int
procstat_getrlimit(struct procstat *procstat, struct kinfo_proc *kp, int which,
    struct rlimit* rlimit)
{
 switch(procstat->type) {
 case 129:
  return (procstat_getrlimit_kvm(procstat->kd, kp, which,
      rlimit));
 case 128:
  return (procstat_getrlimit_sysctl(kp->ki_pid, which, rlimit));
 case 130:
  return (procstat_getrlimit_core(procstat->core, which, rlimit));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (-1);
 }
}
