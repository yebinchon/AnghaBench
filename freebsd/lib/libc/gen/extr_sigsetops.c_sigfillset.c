
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* __bits; } ;
typedef TYPE_1__ sigset_t ;


 int _SIG_WORDS ;

int
sigfillset(sigset_t *set)
{
 int i;

 for (i = 0; i < _SIG_WORDS; i++)
  set->__bits[i] = ~0U;
 return (0);
}
