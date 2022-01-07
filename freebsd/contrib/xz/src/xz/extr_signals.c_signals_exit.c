
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int E_ERROR ;
 int SIG_DFL ;
 int exit_signal ;
 int raise (int) ;
 int set_exit_status (int ) ;
 int sigaction (int const,struct sigaction*,int *) ;
 int sigfillset (int *) ;

extern void
signals_exit(void)
{
 const int sig = exit_signal;

 if (sig != 0) {






  struct sigaction sa;
  sa.sa_handler = SIG_DFL;
  sigfillset(&sa.sa_mask);
  sa.sa_flags = 0;
  sigaction(sig, &sa, ((void*)0));
  raise(exit_signal);

 }

 return;
}
