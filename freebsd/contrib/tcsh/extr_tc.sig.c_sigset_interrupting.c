
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int sa_mask; } ;
typedef int sigset_t ;


 int SIG_UNBLOCK ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
sigset_interrupting(int sig, void (*fn) (int))
{
    struct sigaction act;

    act.sa_handler = fn;
    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    if (sigaction(sig, &act, ((void*)0)) == 0) {
 sigset_t set;
 sigemptyset(&set);
 sigaddset(&set, sig);
 sigprocmask(SIG_UNBLOCK, &set, ((void*)0));
    }
}
