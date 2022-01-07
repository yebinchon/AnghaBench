
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; } ;
struct kinfo_vmentry {int dummy; } ;
struct kinfo_proc {int ki_pid; } ;





 struct kinfo_vmentry* kinfo_getvmmap (int ,unsigned int*) ;
 struct kinfo_vmentry* kinfo_getvmmap_core (int ,unsigned int*) ;
 int warnx (char*,...) ;

struct kinfo_vmentry *
procstat_getvmmap(struct procstat *procstat, struct kinfo_proc *kp,
    unsigned int *cntp)
{

 switch(procstat->type) {
 case 129:
  warnx("kvm method is not supported");
  return (((void*)0));
 case 128:
  return (kinfo_getvmmap(kp->ki_pid, cntp));
 case 130:
  return (kinfo_getvmmap_core(procstat->core, cntp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
