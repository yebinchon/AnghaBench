
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int _SIG_MAXSIG ;
 TYPE_1__* __libc_sigaction_slot (int) ;
 int _thr_rwl_unlock (int *) ;

void
_thr_signal_postfork(void)
{
 int i;

 for (i = 1; i <= _SIG_MAXSIG; ++i)
  _thr_rwl_unlock(&__libc_sigaction_slot(i)->lock);
}
