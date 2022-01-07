
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ sigblock; int sigmask; } ;


 int SIG_BLOCK ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int _thr_maskset ;

void
_thr_signal_block(struct pthread *curthread)
{

 if (curthread->sigblock > 0) {
  curthread->sigblock++;
  return;
 }
 __sys_sigprocmask(SIG_BLOCK, &_thr_maskset, &curthread->sigmask);
 curthread->sigblock++;
}
