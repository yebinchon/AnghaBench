
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;


 int SIGABRT ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int __cleanup () ;
 int __libc_sigaction (int ,struct sigaction*,int *) ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int exit (int) ;
 int raise (int ) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int stub1 () ;

void
abort(void)
{
 struct sigaction act;





 if (__cleanup)
  (*__cleanup)();

 sigfillset(&act.sa_mask);




 sigdelset(&act.sa_mask, SIGABRT);
 (void)__libc_sigprocmask(SIG_SETMASK, &act.sa_mask, ((void*)0));
 (void)raise(SIGABRT);





 act.sa_handler = SIG_DFL;
 act.sa_flags = 0;
 sigfillset(&act.sa_mask);
 (void)__libc_sigaction(SIGABRT, &act, ((void*)0));
 sigdelset(&act.sa_mask, SIGABRT);
 (void)__libc_sigprocmask(SIG_SETMASK, &act.sa_mask, ((void*)0));
 (void)raise(SIGABRT);
 exit(1);
}
