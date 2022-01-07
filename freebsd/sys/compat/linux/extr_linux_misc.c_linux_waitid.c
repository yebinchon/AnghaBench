
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {scalar_t__* td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_waitid_args {int idtype; int * info; int * rusage; int id; int options; } ;
struct __wrusage {int wru_children; } ;
struct TYPE_4__ {int si_signo; } ;
typedef TYPE_1__ siginfo_t ;
typedef int lsi ;
typedef int l_siginfo_t ;
typedef int idtype_t ;


 int EINVAL ;



 int P_ALL ;
 int P_PGID ;
 int P_PID ;
 int WCONTINUED ;
 int WEXITED ;
 int WNOHANG ;
 int WNOWAIT ;
 int WUNTRACED ;
 int bsd_to_linux_signal (int ) ;
 int bzero (int *,int) ;
 int copyout (int *,int *,int) ;
 int kern_wait6 (struct thread*,int ,int ,int*,int,struct __wrusage*,TYPE_1__*) ;
 int linux_copyout_rusage (int *,int *) ;
 int linux_to_bsd_waitopts (int ,int*) ;
 int siginfo_to_lsiginfo (TYPE_1__*,int *,int) ;

int
linux_waitid(struct thread *td, struct linux_waitid_args *args)
{
 int status, options, sig;
 struct __wrusage wru;
 siginfo_t siginfo;
 l_siginfo_t lsi;
 idtype_t idtype;
 struct proc *p;
 int error;

 options = 0;
 linux_to_bsd_waitopts(args->options, &options);

 if (options & ~(WNOHANG | WNOWAIT | WEXITED | WUNTRACED | WCONTINUED))
  return (EINVAL);
 if (!(options & (WEXITED | WUNTRACED | WCONTINUED)))
  return (EINVAL);

 switch (args->idtype) {
 case 130:
  idtype = P_ALL;
  break;
 case 128:
  if (args->id <= 0)
   return (EINVAL);
  idtype = P_PID;
  break;
 case 129:
  if (args->id <= 0)
   return (EINVAL);
  idtype = P_PGID;
  break;
 default:
  return (EINVAL);
 }

 error = kern_wait6(td, idtype, args->id, &status, options,
     &wru, &siginfo);
 if (error != 0)
  return (error);
 if (args->rusage != ((void*)0)) {
  error = linux_copyout_rusage(&wru.wru_children,
      args->rusage);
  if (error != 0)
   return (error);
 }
 if (args->info != ((void*)0)) {
  p = td->td_proc;
  bzero(&lsi, sizeof(lsi));
  if (td->td_retval[0] != 0) {
   sig = bsd_to_linux_signal(siginfo.si_signo);
   siginfo_to_lsiginfo(&siginfo, &lsi, sig);
  }
  error = copyout(&lsi, args->info, sizeof(lsi));
 }
 td->td_retval[0] = 0;

 return (error);
}
