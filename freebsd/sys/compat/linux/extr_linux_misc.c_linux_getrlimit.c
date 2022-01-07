
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct linux_getrlimit_args {size_t resource; int rlim; } ;
struct l_rlimit {void* rlim_max; void* rlim_cur; } ;
typedef int rlim ;
typedef void* l_ulong ;


 int EINVAL ;
 size_t LINUX_RLIM_NLIMITS ;
 int copyout (struct l_rlimit*,int ,int) ;
 int lim_rlimit (struct thread*,int,struct rlimit*) ;
 int* linux_to_bsd_resource ;

int
linux_getrlimit(struct thread *td, struct linux_getrlimit_args *args)
{
 struct l_rlimit rlim;
 struct rlimit bsd_rlim;
 u_int which;

 if (args->resource >= LINUX_RLIM_NLIMITS)
  return (EINVAL);

 which = linux_to_bsd_resource[args->resource];
 if (which == -1)
  return (EINVAL);

 lim_rlimit(td, which, &bsd_rlim);

 rlim.rlim_cur = (l_ulong)bsd_rlim.rlim_cur;
 rlim.rlim_max = (l_ulong)bsd_rlim.rlim_max;
 return (copyout(&rlim, args->rlim, sizeof(rlim)));
}
