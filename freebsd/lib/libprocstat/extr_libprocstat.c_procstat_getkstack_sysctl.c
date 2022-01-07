
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_kstack {int dummy; } ;
typedef size_t pid_t ;


 int CTL_KERN ;
 scalar_t__ ENOENT ;
 scalar_t__ EPERM ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_KSTACK ;
 scalar_t__ errno ;
 int free (struct kinfo_kstack*) ;
 struct kinfo_kstack* malloc (size_t) ;
 int nitems (int*) ;
 int sysctl (int*,int ,struct kinfo_kstack*,size_t*,int *,int ) ;
 int warn (char*,size_t) ;
 int warnx (char*) ;

__attribute__((used)) static struct kinfo_kstack *
procstat_getkstack_sysctl(pid_t pid, int *cntp)
{
 struct kinfo_kstack *kkstp;
 int error, name[4];
 size_t len;

 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_KSTACK;
 name[3] = pid;

 len = 0;
 error = sysctl(name, nitems(name), ((void*)0), &len, ((void*)0), 0);
 if (error < 0 && errno != ESRCH && errno != EPERM && errno != ENOENT) {
  warn("sysctl: kern.proc.kstack: %d", pid);
  return (((void*)0));
 }
 if (error == -1 && errno == ENOENT) {
  warnx("sysctl: kern.proc.kstack unavailable"
      " (options DDB or options STACK required in kernel)");
  return (((void*)0));
 }
 if (error == -1)
  return (((void*)0));
 kkstp = malloc(len);
 if (kkstp == ((void*)0)) {
  warn("malloc(%zu)", len);
  return (((void*)0));
 }
 if (sysctl(name, nitems(name), kkstp, &len, ((void*)0), 0) == -1) {
  warn("sysctl: kern.proc.pid: %d", pid);
  free(kkstp);
  return (((void*)0));
 }
 *cntp = len / sizeof(*kkstp);

 return (kkstp);
}
