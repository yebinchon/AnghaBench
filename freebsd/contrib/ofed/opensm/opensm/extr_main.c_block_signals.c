
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_SETMASK ;
 int pthread_sigmask (int ,int *,int *) ;
 int saved_sigset ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void block_signals()
{
 sigset_t set;

 sigemptyset(&set);
 sigaddset(&set, SIGINT);
 sigaddset(&set, SIGTERM);
 sigaddset(&set, SIGHUP);

 sigaddset(&set, SIGUSR1);

 pthread_sigmask(SIG_SETMASK, &set, &saved_sigset);
}
