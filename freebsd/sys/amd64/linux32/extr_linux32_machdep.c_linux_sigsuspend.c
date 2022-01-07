
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_sigsuspend_args {int mask; } ;
typedef int sigset_t ;
struct TYPE_4__ {int __mask; } ;
typedef TYPE_1__ l_sigset_t ;


 int LINUX_SIGEMPTYSET (TYPE_1__) ;
 int kern_sigsuspend (struct thread*,int ) ;
 int linux_to_bsd_sigset (TYPE_1__*,int *) ;

int
linux_sigsuspend(struct thread *td, struct linux_sigsuspend_args *args)
{
 sigset_t sigmask;
 l_sigset_t mask;

 LINUX_SIGEMPTYSET(mask);
 mask.__mask = args->mask;
 linux_to_bsd_sigset(&mask, &sigmask);
 return (kern_sigsuspend(td, sigmask));
}
