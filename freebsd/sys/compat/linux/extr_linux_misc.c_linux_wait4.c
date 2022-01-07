
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_wait4_args {int options; int * rusage; int status; int pid; } ;
struct __wrusage {int wru_self; } ;


 int EINVAL ;
 int LINUX_WCONTINUED ;
 int LINUX_WNOHANG ;
 int LINUX_WUNTRACED ;
 int WEXITED ;
 int __WALL ;
 int __WCLONE ;
 int __WNOTHREAD ;
 int linux_common_wait (struct thread*,int ,int ,int,struct __wrusage*) ;
 int linux_copyout_rusage (int *,int *) ;
 int linux_to_bsd_waitopts (int,int*) ;

int
linux_wait4(struct thread *td, struct linux_wait4_args *args)
{
 int error, options;
 struct __wrusage wru, *wrup;

 if (args->options & ~(LINUX_WUNTRACED | LINUX_WNOHANG |
     LINUX_WCONTINUED | __WCLONE | __WNOTHREAD | __WALL))
  return (EINVAL);

 options = WEXITED;
 linux_to_bsd_waitopts(args->options, &options);

 if (args->rusage != ((void*)0))
  wrup = &wru;
 else
  wrup = ((void*)0);
 error = linux_common_wait(td, args->pid, args->status, options, wrup);
 if (error != 0)
  return (error);
 if (args->rusage != ((void*)0))
  error = linux_copyout_rusage(&wru.wru_self, args->rusage);
 return (error);
}
