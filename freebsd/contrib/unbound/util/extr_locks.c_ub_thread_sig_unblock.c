
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_UNBLOCK ;
 int errno ;
 int fatal_exit (char*,int ) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int) ;
 int thr_sigsetmask (int ,int *,int *) ;

void ub_thread_sig_unblock(int sig)
{
 (void)sig;

}
