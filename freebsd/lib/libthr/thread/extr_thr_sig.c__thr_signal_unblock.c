
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ sigblock; int sigmask; } ;


 int SIG_SETMASK ;
 int __sys_sigprocmask (int ,int *,int *) ;

void
_thr_signal_unblock(struct pthread *curthread)
{
 if (--curthread->sigblock == 0)
  __sys_sigprocmask(SIG_SETMASK, &curthread->sigmask, ((void*)0));
}
