
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t pid_t ;
typedef int gid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_GROUPS ;
 int _SC_NGROUPS_MAX ;
 int free (int *) ;
 int * malloc (size_t) ;
 int nitems (int*) ;
 int sysconf (int ) ;
 int sysctl (int*,int ,int *,size_t*,int *,int ) ;
 int warn (char*,size_t) ;

__attribute__((used)) static gid_t *
procstat_getgroups_sysctl(pid_t pid, unsigned int *cntp)
{
 int mib[4];
 size_t len;
 gid_t *groups;

 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_GROUPS;
 mib[3] = pid;
 len = (sysconf(_SC_NGROUPS_MAX) + 1) * sizeof(gid_t);
 groups = malloc(len);
 if (groups == ((void*)0)) {
  warn("malloc(%zu)", len);
  return (((void*)0));
 }
 if (sysctl(mib, nitems(mib), groups, &len, ((void*)0), 0) == -1) {
  warn("sysctl: kern.proc.groups: %d", pid);
  free(groups);
  return (((void*)0));
 }
 *cntp = len / sizeof(gid_t);
 return (groups);
}
