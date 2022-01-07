
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct linux_setrlimit_args {size_t resource; int rlim; } ;
struct l_rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
typedef void* rlim_t ;
typedef int rlim ;


 int EINVAL ;
 size_t LINUX_RLIM_NLIMITS ;
 int copyin (int ,struct l_rlimit*,int) ;
 int kern_setrlimit (struct thread*,int,struct rlimit*) ;
 int* linux_to_bsd_resource ;

int
linux_setrlimit(struct thread *td, struct linux_setrlimit_args *args)
{
 struct rlimit bsd_rlim;
 struct l_rlimit rlim;
 u_int which;
 int error;

 if (args->resource >= LINUX_RLIM_NLIMITS)
  return (EINVAL);

 which = linux_to_bsd_resource[args->resource];
 if (which == -1)
  return (EINVAL);

 error = copyin(args->rlim, &rlim, sizeof(rlim));
 if (error)
  return (error);

 bsd_rlim.rlim_cur = (rlim_t)rlim.rlim_cur;
 bsd_rlim.rlim_max = (rlim_t)rlim.rlim_max;
 return (kern_setrlimit(td, which, &bsd_rlim));
}
