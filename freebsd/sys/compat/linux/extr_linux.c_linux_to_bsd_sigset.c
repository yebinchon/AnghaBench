
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int l_sigset_t ;


 scalar_t__ LINUX_SIGISMEMBER (int ,int) ;
 int LINUX_SIGRTMAX ;
 int SIGADDSET (int ,int) ;
 int SIGEMPTYSET (int ) ;
 int linux_to_bsd_signal (int) ;

void
linux_to_bsd_sigset(l_sigset_t *lss, sigset_t *bss)
{
 int b, l;

 SIGEMPTYSET(*bss);
 for (l = 1; l <= LINUX_SIGRTMAX; l++) {
  if (LINUX_SIGISMEMBER(*lss, l)) {
   b = linux_to_bsd_signal(l);
   if (b)
    SIGADDSET(*bss, b);
  }
 }
}
