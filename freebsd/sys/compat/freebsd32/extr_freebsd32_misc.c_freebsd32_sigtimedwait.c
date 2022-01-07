
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ts32 ;
struct timespec32 {int tv_nsec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct thread {int * td_retval; } ;
struct siginfo32 {int dummy; } ;
struct freebsd32_sigtimedwait_args {int info; scalar_t__ set; scalar_t__ timeout; } ;
typedef struct timespec32 sigset_t ;
typedef int set ;
struct TYPE_3__ {int ksi_signo; int ksi_info; } ;
typedef TYPE_1__ ksiginfo_t ;


 int copyin (scalar_t__,struct timespec32*,int) ;
 int copyout (struct siginfo32*,int ,int) ;
 int kern_sigtimedwait (struct thread*,struct timespec32,TYPE_1__*,struct timespec*) ;
 int siginfo_to_siginfo32 (int *,struct siginfo32*) ;

int
freebsd32_sigtimedwait(struct thread *td, struct freebsd32_sigtimedwait_args *uap)
{
 struct timespec32 ts32;
 struct timespec ts;
 struct timespec *timeout;
 sigset_t set;
 ksiginfo_t ksi;
 struct siginfo32 si32;
 int error;

 if (uap->timeout) {
  error = copyin(uap->timeout, &ts32, sizeof(ts32));
  if (error)
   return (error);
  ts.tv_sec = ts32.tv_sec;
  ts.tv_nsec = ts32.tv_nsec;
  timeout = &ts;
 } else
  timeout = ((void*)0);

 error = copyin(uap->set, &set, sizeof(set));
 if (error)
  return (error);

 error = kern_sigtimedwait(td, set, &ksi, timeout);
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
