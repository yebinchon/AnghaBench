
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int l_sigset_t ;


 int LINUX_SIGADDSET (int ,int) ;
 int LINUX_SIGEMPTYSET (int ) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SIGRTMAX ;
 int bsd_to_linux_signal (int) ;

void
bsd_to_linux_sigset(sigset_t *bss, l_sigset_t *lss)
{
 int b, l;

 LINUX_SIGEMPTYSET(*lss);
 for (b = 1; b <= SIGRTMAX; b++) {
  if (SIGISMEMBER(*bss, b)) {
   l = bsd_to_linux_signal(b);
   if (l)
    LINUX_SIGADDSET(*lss, l);
  }
 }
}
