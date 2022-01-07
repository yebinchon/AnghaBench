
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; int sa_mask; int * sa_sigaction; int sa_flags; } ;
struct usigaction {struct sigaction sigact; } ;
typedef int sigset_t ;
typedef int __siginfohandler_t ;


 int SA_NODEFER ;
 int SA_SIGINFO ;
 int SIGADDSET (int ,int) ;
 int SIGCANCEL ;
 int SIGEMPTYSET (int ) ;
 int SIGFILLSET (int ) ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int SIG_SETMASK ;
 int SIG_UNBLOCK ;
 int _SIG_MAXSIG ;
 struct usigaction* __libc_sigaction_slot (int) ;
 int __sys_sigaction (int,struct sigaction*,struct sigaction*) ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int _thr_maskset ;
 int remove_thr_signals (int *) ;
 int sigcancel_handler ;
 int * thr_sighandler ;

void
_thr_signal_init(int dlopened)
{
 struct sigaction act, nact, oact;
 struct usigaction *usa;
 sigset_t oldset;
 int sig, error;

 if (dlopened) {
  __sys_sigprocmask(SIG_SETMASK, &_thr_maskset, &oldset);
  for (sig = 1; sig <= _SIG_MAXSIG; sig++) {
   if (sig == SIGCANCEL)
    continue;
   error = __sys_sigaction(sig, ((void*)0), &oact);
   if (error == -1 || oact.sa_handler == SIG_DFL ||
       oact.sa_handler == SIG_IGN)
    continue;
   usa = __libc_sigaction_slot(sig);
   usa->sigact = oact;
   nact = oact;
   remove_thr_signals(&usa->sigact.sa_mask);
   nact.sa_flags &= ~SA_NODEFER;
   nact.sa_flags |= SA_SIGINFO;
   nact.sa_sigaction = thr_sighandler;
   nact.sa_mask = _thr_maskset;
   (void)__sys_sigaction(sig, &nact, ((void*)0));
  }
  __sys_sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
 }


 SIGFILLSET(act.sa_mask);
 act.sa_flags = SA_SIGINFO;
 act.sa_sigaction = (__siginfohandler_t *)&sigcancel_handler;
 __sys_sigaction(SIGCANCEL, &act, ((void*)0));


 SIGEMPTYSET(act.sa_mask);
 SIGADDSET(act.sa_mask, SIGCANCEL);
 __sys_sigprocmask(SIG_UNBLOCK, &act.sa_mask, ((void*)0));
}
