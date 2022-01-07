
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pthread {int dummy; } ;
struct TYPE_4__ {TYPE_3__* thr_extra; } ;
typedef TYPE_1__ spinlock_t ;
struct TYPE_5__ {TYPE_1__* owner; int lock; } ;


 size_t MAX_SPINLOCKS ;
 int PANIC (char*) ;
 int THR_UMUTEX_LOCK (struct pthread*,int *) ;
 int THR_UMUTEX_UNLOCK (struct pthread*,int *) ;
 struct pthread* _get_curthread () ;
 int _thr_umutex_init (int *) ;
 TYPE_3__* extra ;
 size_t spinlock_count ;
 int spinlock_static_lock ;

__attribute__((used)) static void
init_spinlock(spinlock_t *lck)
{
 struct pthread *curthread = _get_curthread();

 THR_UMUTEX_LOCK(curthread, &spinlock_static_lock);
 if ((lck->thr_extra == ((void*)0)) && (spinlock_count < MAX_SPINLOCKS)) {
  lck->thr_extra = &extra[spinlock_count];
  _thr_umutex_init(&extra[spinlock_count].lock);
  extra[spinlock_count].owner = lck;
  spinlock_count++;
 }
 THR_UMUTEX_UNLOCK(curthread, &spinlock_static_lock);
 if (lck->thr_extra == ((void*)0))
  PANIC("Warning: exceeded max spinlocks");
}
