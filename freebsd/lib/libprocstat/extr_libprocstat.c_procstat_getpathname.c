
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int type; int core; } ;
struct kinfo_proc {int ki_pid; } ;





 int procstat_getpathname_core (int ,char*,size_t) ;
 int procstat_getpathname_sysctl (int ,char*,size_t) ;
 int warnx (char*,int) ;

int
procstat_getpathname(struct procstat *procstat, struct kinfo_proc *kp,
    char *pathname, size_t maxlen)
{
 switch(procstat->type) {
 case 129:

  if (maxlen > 0)
   pathname[0] = '\0';
  return (0);
 case 128:
  return (procstat_getpathname_sysctl(kp->ki_pid, pathname,
      maxlen));
 case 130:
  return (procstat_getpathname_core(procstat->core, pathname,
      maxlen));
 default:
  warnx("unknown access method: %d", procstat->type);
  return (-1);
 }
}
