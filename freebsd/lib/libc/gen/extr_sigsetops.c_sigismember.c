
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* __bits; } ;
typedef TYPE_1__ sigset_t ;


 int EINVAL ;
 int _SIG_BIT (int) ;
 int _SIG_MAXSIG ;
 size_t _SIG_WORD (int) ;
 int errno ;

int
sigismember(const sigset_t *set, int signo)
{

 if (signo <= 0 || signo > _SIG_MAXSIG) {
  errno = EINVAL;
  return (-1);
 }
 return ((set->__bits[_SIG_WORD(signo)] & _SIG_BIT(signo)) ? 1 : 0);
}
