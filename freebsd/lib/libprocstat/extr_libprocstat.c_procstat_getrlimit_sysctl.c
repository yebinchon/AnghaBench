
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
typedef int pid_t ;


 int CTL_KERN ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_RLIMIT ;
 scalar_t__ errno ;
 int nitems (int*) ;
 int sysctl (int*,int ,struct rlimit*,size_t*,int *,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int
procstat_getrlimit_sysctl(pid_t pid, int which, struct rlimit* rlimit)
{
 int error, name[5];
 size_t len;

 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_RLIMIT;
 name[3] = pid;
 name[4] = which;
 len = sizeof(struct rlimit);
 error = sysctl(name, nitems(name), rlimit, &len, ((void*)0), 0);
 if (error < 0 && errno != ESRCH) {
  warn("sysctl: kern.proc.rlimit: %d", pid);
  return (-1);
 }
 if (error < 0 || len != sizeof(struct rlimit))
  return (-1);
 return (0);
}
