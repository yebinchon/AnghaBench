
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef TYPE_1__* pthread_barrier_t ;
struct TYPE_8__ {int b_destroying; scalar_t__ b_waiters; scalar_t__ b_refcount; int b_lock; int b_cv; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_1__* THR_PSHARED_PTR ;
 int THR_UMUTEX_LOCK (struct pthread*,int *) ;
 int THR_UMUTEX_UNLOCK (struct pthread*,int *) ;
 int __thr_pshared_destroy (TYPE_1__**) ;
 TYPE_1__* __thr_pshared_offpage (TYPE_1__**,int ) ;
 struct pthread* _get_curthread () ;
 int _thr_ucond_wait (int *,int *,int *,int ) ;
 int free (TYPE_1__*) ;

int
_pthread_barrier_destroy(pthread_barrier_t *barrier)
{
 pthread_barrier_t bar;
 struct pthread *curthread;
 int pshared;

 if (barrier == ((void*)0) || *barrier == ((void*)0))
  return (EINVAL);

 if (*barrier == THR_PSHARED_PTR) {
  bar = __thr_pshared_offpage(barrier, 0);
  if (bar == ((void*)0)) {
   *barrier = ((void*)0);
   return (0);
  }
  pshared = 1;
 } else {
  bar = *barrier;
  pshared = 0;
 }
 curthread = _get_curthread();
 THR_UMUTEX_LOCK(curthread, &bar->b_lock);
 if (bar->b_destroying) {
  THR_UMUTEX_UNLOCK(curthread, &bar->b_lock);
  return (EBUSY);
 }
 bar->b_destroying = 1;
 do {
  if (bar->b_waiters > 0) {
   bar->b_destroying = 0;
   THR_UMUTEX_UNLOCK(curthread, &bar->b_lock);
   return (EBUSY);
  }
  if (bar->b_refcount != 0) {
   _thr_ucond_wait(&bar->b_cv, &bar->b_lock, ((void*)0), 0);
   THR_UMUTEX_LOCK(curthread, &bar->b_lock);
  } else
   break;
 } while (1);
 bar->b_destroying = 0;
 THR_UMUTEX_UNLOCK(curthread, &bar->b_lock);

 *barrier = ((void*)0);
 if (pshared)
  __thr_pshared_destroy(barrier);
 else
  free(bar);
 return (0);
}
