
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef int sigset_t ;
typedef int sa ;


 int LOG_CRIT ;
 int SIGABRT ;
 int SIG_BLOCK ;
 int SIG_DFL ;
 int _exit (int) ;
 int getpid () ;
 int kill (int ,int ) ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigdelset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int syslog (int ,char*,char const*) ;

__attribute__((used)) static void
__fail(const char *msg)
{
 struct sigaction sa;
 sigset_t mask;


 (void)sigfillset(&mask);
 (void)sigdelset(&mask, SIGABRT);
 (void)sigprocmask(SIG_BLOCK, &mask, ((void*)0));


 syslog(LOG_CRIT, "%s", msg);

 (void)memset(&sa, 0, sizeof(sa));
 (void)sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 sa.sa_handler = SIG_DFL;
 (void)sigaction(SIGABRT, &sa, ((void*)0));
 (void)kill(getpid(), SIGABRT);
 _exit(127);
}
