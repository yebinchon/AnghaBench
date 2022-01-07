
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int SIGCONT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_SETMASK ;
 int mark_exit_flag ;
 int mark_hup_flag ;
 int mark_usr1_flag ;
 int pthread_sigmask (int ,int *,int *) ;
 int saved_sigset ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void setup_signals()
{
 struct sigaction act;

 sigemptyset(&act.sa_mask);
 act.sa_handler = mark_exit_flag;
 act.sa_flags = 0;
 sigaction(SIGINT, &act, ((void*)0));
 sigaction(SIGTERM, &act, ((void*)0));
 act.sa_handler = mark_hup_flag;
 sigaction(SIGHUP, &act, ((void*)0));
 sigaction(SIGCONT, &act, ((void*)0));

 act.sa_handler = mark_usr1_flag;
 sigaction(SIGUSR1, &act, ((void*)0));

 pthread_sigmask(SIG_SETMASK, &saved_sigset, ((void*)0));
}
