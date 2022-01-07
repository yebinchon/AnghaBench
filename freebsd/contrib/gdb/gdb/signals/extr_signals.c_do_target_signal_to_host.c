
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int EXC_ARITHMETIC ;
 int EXC_BAD_ACCESS ;
 int EXC_BAD_INSTRUCTION ;
 int EXC_BREAKPOINT ;
 int EXC_EMULATION ;
 int EXC_SOFTWARE ;
 int REALTIME_HI ;
 int REALTIME_LO ;
 int SIGABRT ;
 int SIGALRM ;
 int SIGBUS ;
 int SIGCANCEL ;
 int SIGCHLD ;
 int SIGCLD ;
 int SIGCONT ;
 int SIGDANGER ;
 int SIGEMT ;
 int SIGFPE ;
 int SIGGRANT ;
 int SIGHUP ;
 int SIGILL ;
 int SIGINFO ;
 int SIGINT ;
 int SIGIO ;
 int SIGKILL ;
 int SIGLOST ;
 int SIGLWP ;
 int SIGMSG ;
 int SIGPHONE ;
 int SIGPIPE ;
 int SIGPOLL ;
 int SIGPRIO ;
 int SIGPROF ;
 int SIGPWR ;
 int SIGQUIT ;
 int SIGRETRACT ;
 int SIGSAK ;
 int SIGSEGV ;
 int SIGSOUND ;
 int SIGSTOP ;
 int SIGSYS ;
 int SIGTERM ;
 int SIGTRAP ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIGURG ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGVTALRM ;
 int SIGWAITING ;
 int SIGWINCH ;
 int SIGWIND ;
 int SIGXCPU ;
 int SIGXFSZ ;
 int TARGET_SIGNAL_REALTIME_127 ;
 int TARGET_SIGNAL_REALTIME_32 ;
 int TARGET_SIGNAL_REALTIME_33 ;
 int TARGET_SIGNAL_REALTIME_63 ;
 int TARGET_SIGNAL_REALTIME_64 ;
 int _NSIG ;

__attribute__((used)) static int
do_target_signal_to_host (enum target_signal oursig,
     int *oursig_ok)
{
  int retsig;

  *oursig_ok = 1;
  switch (oursig)
    {
    case 174:
      return 0;
    default:
      *oursig_ok = 0;
      return 0;
    }
}
