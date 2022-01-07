
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; } ;
struct kinfo_proc {int ki_pid; } ;
typedef int Elf_Auxinfo ;





 int * procstat_getauxv_core (int ,unsigned int*) ;
 int * procstat_getauxv_sysctl (int ,unsigned int*) ;
 int warnx (char*,...) ;

Elf_Auxinfo *
procstat_getauxv(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{
 switch(procstat->type) {
 case 129:
  warnx("kvm method is not supported");
  return (((void*)0));
 case 128:
  return (procstat_getauxv_sysctl(kp->ki_pid, cntp));
 case 130:
  return (procstat_getauxv_core(procstat->core, cntp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
