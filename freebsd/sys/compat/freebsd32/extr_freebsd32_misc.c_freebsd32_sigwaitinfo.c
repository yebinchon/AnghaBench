
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int * td_retval; } ;
struct siginfo32 {int dummy; } ;
struct freebsd32_sigwaitinfo_args {int info; int set; } ;
typedef int sigset_t ;
typedef int set ;
struct TYPE_3__ {int ksi_signo; int ksi_info; } ;
typedef TYPE_1__ ksiginfo_t ;


 int copyin (int ,int *,int) ;
 int copyout (struct siginfo32*,int ,int) ;
 int kern_sigtimedwait (struct thread*,int ,TYPE_1__*,int *) ;
 int siginfo_to_siginfo32 (int *,struct siginfo32*) ;

int
freebsd32_sigwaitinfo(struct thread *td, struct freebsd32_sigwaitinfo_args *uap)
{
 ksiginfo_t ksi;
 struct siginfo32 si32;
 sigset_t set;
 int error;

 error = copyin(uap->set, &set, sizeof(set));
 if (error)
  return (error);

 error = kern_sigtimedwait(td, set, &ksi, ((void*)0));
 if (error)
  return (error);

 if (uap->info) {
  siginfo_to_siginfo32(&ksi.ksi_info, &si32);
  error = copyout(&si32, uap->info, sizeof(struct siginfo32));
 }
 if (error == 0)
  td->td_retval[0] = ksi.ksi_signo;
 return (error);
}
