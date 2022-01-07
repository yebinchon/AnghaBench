
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;
typedef int sig_t ;


 int SA_RESTART ;
 int SIG_ERR ;
 scalar_t__ __libc_sigaction (int,struct sigaction*,struct sigaction*) ;
 int _sigintr ;
 int sigemptyset (int *) ;
 int sigismember (int *,int) ;

sig_t
signal(int s, sig_t a)
{
 struct sigaction sa, osa;

 sa.sa_handler = a;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 if (!sigismember(&_sigintr, s))
  sa.sa_flags |= SA_RESTART;
 if (__libc_sigaction(s, &sa, &osa) < 0)
  return (SIG_ERR);
 return (osa.sa_handler);
}
