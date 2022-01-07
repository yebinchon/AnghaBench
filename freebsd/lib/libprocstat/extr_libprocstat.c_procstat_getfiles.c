
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; } ;
struct kinfo_proc {int dummy; } ;
struct filestat_list {int dummy; } ;





 struct filestat_list* procstat_getfiles_kvm (struct procstat*,struct kinfo_proc*,int) ;
 struct filestat_list* procstat_getfiles_sysctl (struct procstat*,struct kinfo_proc*,int) ;
 int warnx (char*,int) ;

struct filestat_list *
procstat_getfiles(struct procstat *procstat, struct kinfo_proc *kp, int mmapped)
{

 switch(procstat->type) {
 case 129:
  return (procstat_getfiles_kvm(procstat, kp, mmapped));
 case 128:
 case 130:
  return (procstat_getfiles_sysctl(procstat, kp, mmapped));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
