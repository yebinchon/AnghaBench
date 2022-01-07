
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sigval {int sival_int; } ;
typedef int sv ;
struct thread {int dummy; } ;
struct freebsd32_sigqueue_args {int signum; int pid; int value; } ;


 int bzero (union sigval*,int) ;
 int kern_sigqueue (struct thread*,int ,int ,union sigval*) ;

int
freebsd32_sigqueue(struct thread *td, struct freebsd32_sigqueue_args *uap)
{
 union sigval sv;
 bzero(&sv, sizeof(sv));
 sv.sival_int = uap->value;

 return (kern_sigqueue(td, uap->pid, uap->signum, &sv));
}
