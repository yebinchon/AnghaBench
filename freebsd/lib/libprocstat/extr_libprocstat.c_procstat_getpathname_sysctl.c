
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CTL_KERN ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_PATHNAME ;
 scalar_t__ errno ;
 int nitems (int*) ;
 int sysctl (int*,int ,char*,size_t*,int *,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int
procstat_getpathname_sysctl(pid_t pid, char *pathname, size_t maxlen)
{
 int error, name[4];
 size_t len;

 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_PATHNAME;
 name[3] = pid;
 len = maxlen;
 error = sysctl(name, nitems(name), pathname, &len, ((void*)0), 0);
 if (error != 0 && errno != ESRCH)
  warn("sysctl: kern.proc.pathname: %d", pid);
 if (len == 0)
  pathname[0] = '\0';
 return (error);
}
