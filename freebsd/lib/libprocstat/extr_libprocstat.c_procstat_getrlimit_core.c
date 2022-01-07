
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
struct procstat_core {int dummy; } ;


 int EINVAL ;
 int PSC_TYPE_RLIMIT ;
 int RLIM_NLIMITS ;
 int errno ;
 int free (struct rlimit*) ;
 struct rlimit* procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;
 int warn (char*) ;

__attribute__((used)) static int
procstat_getrlimit_core(struct procstat_core *core, int which,
    struct rlimit* rlimit)
{
 size_t len;
 struct rlimit* rlimits;

 if (which < 0 || which >= RLIM_NLIMITS) {
  errno = EINVAL;
  warn("getrlimit: which");
  return (-1);
 }
 rlimits = procstat_core_get(core, PSC_TYPE_RLIMIT, ((void*)0), &len);
 if (rlimits == ((void*)0))
  return (-1);
 if (len < sizeof(struct rlimit) * RLIM_NLIMITS) {
  free(rlimits);
  return (-1);
 }
 *rlimit = rlimits[which];
 free(rlimits);
 return (0);
}
