
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {int dummy; } ;
struct procstat {int type; int core; } ;





 struct ptrace_lwpinfo* procstat_getptlwpinfo_core (int ,unsigned int*) ;
 int warnx (char*,...) ;

struct ptrace_lwpinfo *
procstat_getptlwpinfo(struct procstat *procstat, unsigned int *cntp)
{
 switch (procstat->type) {
 case 129:
  warnx("kvm method is not supported");
  return (((void*)0));
 case 128:
  warnx("sysctl method is not supported");
  return (((void*)0));
 case 130:
   return (procstat_getptlwpinfo_core(procstat->core, cntp));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (((void*)0));
 }
}
