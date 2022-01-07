
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CTL_KERN ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_OSREL ;
 scalar_t__ errno ;
 int nitems (int*) ;
 int sysctl (int*,int ,int*,size_t*,int *,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int
procstat_getosrel_sysctl(pid_t pid, int *osrelp)
{
 int error, name[4];
 size_t len;

 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_OSREL;
 name[3] = pid;
 len = sizeof(*osrelp);
 error = sysctl(name, nitems(name), osrelp, &len, ((void*)0), 0);
 if (error != 0 && errno != ESRCH)
  warn("sysctl: kern.proc.osrel: %d", pid);
 return (error);
}
