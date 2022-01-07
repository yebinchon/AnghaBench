
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; void* sa_handler; scalar_t__ sa_flags; void* sa_sigaction; } ;
typedef int sigset_t ;


 scalar_t__ SA_SIGINFO ;
 int SIGALRM ;
 int SIG_SETMASK ;
 int alarm (int) ;
 void* alarm_handler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void *
setup(void *dummy)
{
 struct sigaction sa;
 sigset_t ss;




 sa.sa_flags = 0;
 sa.sa_handler = alarm_handler;

 sigfillset(&ss);
 sigprocmask(SIG_SETMASK, &ss, ((void*)0));
 sigemptyset(&sa.sa_mask);
 sigaction(SIGALRM, &sa, ((void*)0));
 alarm(1);

 return ((void*)0);
}
