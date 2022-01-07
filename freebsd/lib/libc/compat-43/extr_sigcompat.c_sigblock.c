
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* __bits; } ;
typedef TYPE_1__ sigset_t ;


 int SIG_BLOCK ;
 int __libc_sigprocmask (int ,TYPE_1__*,TYPE_1__*) ;
 int sigemptyset (TYPE_1__*) ;

int
sigblock(int mask)
{
 sigset_t set, oset;
 int n;

 sigemptyset(&set);
 set.__bits[0] = mask;
 n = __libc_sigprocmask(SIG_BLOCK, &set, &oset);
 if (n)
  return (n);
 return (oset.__bits[0]);
}
