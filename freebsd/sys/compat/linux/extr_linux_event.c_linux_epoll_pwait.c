
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_epoll_pwait_args {int sigsetsize; int timeout; int maxevents; int events; int epfd; int * mask; } ;
typedef int sigset_t ;
typedef int l_sigset_t ;


 int EINVAL ;
 int copyin (int *,int *,int) ;
 int linux_epoll_wait_common (struct thread*,int ,int ,int ,int ,int *) ;
 int linux_to_bsd_sigset (int *,int *) ;

int
linux_epoll_pwait(struct thread *td, struct linux_epoll_pwait_args *args)
{
 sigset_t mask, *pmask;
 l_sigset_t lmask;
 int error;

 if (args->mask != ((void*)0)) {
  if (args->sigsetsize != sizeof(l_sigset_t))
   return (EINVAL);
  error = copyin(args->mask, &lmask, sizeof(l_sigset_t));
  if (error != 0)
   return (error);
  linux_to_bsd_sigset(&lmask, &mask);
  pmask = &mask;
 } else
  pmask = ((void*)0);
 return (linux_epoll_wait_common(td, args->epfd, args->events,
     args->maxevents, args->timeout, pmask));
}
