
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct timespec {int dummy; } ;
struct thread {scalar_t__* td_retval; } ;
struct linux_pselect6_args {int * tsp; int exceptfds; int writefds; int readfds; int nfds; int * sig; } ;
struct l_timespec {int ss_len; scalar_t__ ss; } ;
struct l_pselect6arg {int ss_len; scalar_t__ ss; } ;
typedef int sigset_t ;
typedef int lts ;
typedef int lpse6 ;
typedef int l_ss ;
typedef struct l_timespec l_sigset_t ;


 int EINVAL ;
 int LINUX_NFDBITS ;
 int * PTRIN (scalar_t__) ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int copyin (int *,struct l_timespec*,int) ;
 int copyout (struct l_timespec*,int *,int) ;
 scalar_t__ itimerfix (struct timeval*) ;
 int kern_pselect (struct thread*,int ,int ,int ,int ,struct timeval*,int *,int ) ;
 int linux_to_bsd_sigset (struct l_timespec*,int *) ;
 int linux_to_native_timespec (struct timespec*,struct l_timespec*) ;
 int microtime (struct timeval*) ;
 int native_to_linux_timespec (struct l_timespec*,struct timespec*) ;
 int timevalclear (struct timeval*) ;
 int timevalsub (struct timeval*,struct timeval*) ;

int
linux_pselect6(struct thread *td, struct linux_pselect6_args *args)
{
 struct timeval utv, tv0, tv1, *tvp;
 struct l_pselect6arg lpse6;
 struct l_timespec lts;
 struct timespec uts;
 l_sigset_t l_ss;
 sigset_t *ssp;
 sigset_t ss;
 int error;

 ssp = ((void*)0);
 if (args->sig != ((void*)0)) {
  error = copyin(args->sig, &lpse6, sizeof(lpse6));
  if (error != 0)
   return (error);
  if (lpse6.ss_len != sizeof(l_ss))
   return (EINVAL);
  if (lpse6.ss != 0) {
   error = copyin(PTRIN(lpse6.ss), &l_ss,
       sizeof(l_ss));
   if (error != 0)
    return (error);
   linux_to_bsd_sigset(&l_ss, &ss);
   ssp = &ss;
  }
 }





 if (args->tsp != ((void*)0)) {
  error = copyin(args->tsp, &lts, sizeof(lts));
  if (error != 0)
   return (error);
  error = linux_to_native_timespec(&uts, &lts);
  if (error != 0)
   return (error);

  TIMESPEC_TO_TIMEVAL(&utv, &uts);
  if (itimerfix(&utv))
   return (EINVAL);

  microtime(&tv0);
  tvp = &utv;
 } else
  tvp = ((void*)0);

 error = kern_pselect(td, args->nfds, args->readfds, args->writefds,
     args->exceptfds, tvp, ssp, LINUX_NFDBITS);

 if (error == 0 && args->tsp != ((void*)0)) {
  if (td->td_retval[0] != 0) {







   microtime(&tv1);
   timevalsub(&tv1, &tv0);
   timevalsub(&utv, &tv1);
   if (utv.tv_sec < 0)
    timevalclear(&utv);
  } else
   timevalclear(&utv);

  TIMEVAL_TO_TIMESPEC(&utv, &uts);

  error = native_to_linux_timespec(&lts, &uts);
  if (error == 0)
   error = copyout(&lts, args->tsp, sizeof(lts));
 }

 return (error);
}
