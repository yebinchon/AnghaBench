
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct spinlock_extra {int lock; } ;
struct TYPE_4__ {struct spinlock_extra* thr_extra; } ;
typedef TYPE_1__ spinlock_t ;


 int PANIC (char*) ;
 int THR_UMUTEX_LOCK (int ,int *) ;
 int _get_curthread () ;
 int _thr_isthreaded () ;
 int init_spinlock (TYPE_1__*) ;
 int initialized ;

void
__thr_spinlock(spinlock_t *lck)
{
 struct spinlock_extra *_extra;

 if (!_thr_isthreaded())
  PANIC("Spinlock called when not threaded.");
 if (!initialized)
  PANIC("Spinlocks not initialized.");
 if (lck->thr_extra == ((void*)0))
  init_spinlock(lck);
 _extra = lck->thr_extra;
 THR_UMUTEX_LOCK(_get_curthread(), &_extra->lock);
}
