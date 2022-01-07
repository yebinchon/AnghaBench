
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spinlock_extra {int lock; } ;
struct TYPE_3__ {struct spinlock_extra* thr_extra; } ;
typedef TYPE_1__ spinlock_t ;


 int THR_UMUTEX_UNLOCK (int ,int *) ;
 int _get_curthread () ;

void
__thr_spinunlock(spinlock_t *lck)
{
 struct spinlock_extra *_extra;

 _extra = lck->thr_extra;
 THR_UMUTEX_UNLOCK(_get_curthread(), &_extra->lock);
}
