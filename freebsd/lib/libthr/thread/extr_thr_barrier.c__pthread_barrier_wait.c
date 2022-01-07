
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef TYPE_1__* pthread_barrier_t ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ b_waiters; scalar_t__ b_count; scalar_t__ b_cycle; scalar_t__ b_refcount; int b_lock; int b_cv; scalar_t__ b_destroying; } ;


 int EINVAL ;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 TYPE_1__* THR_PSHARED_PTR ;
 int THR_UMUTEX_LOCK (struct pthread*,int *) ;
 int THR_UMUTEX_UNLOCK (struct pthread*,int *) ;
 TYPE_1__* __thr_pshared_offpage (TYPE_1__**,int ) ;
 struct pthread* _get_curthread () ;
 int _thr_ucond_broadcast (int *) ;
 int _thr_ucond_wait (int *,int *,int *,int ) ;

int
_pthread_barrier_wait(pthread_barrier_t *barrier)
{
 struct pthread *curthread;
 pthread_barrier_t bar;
 int64_t cycle;
 int ret;

 if (barrier == ((void*)0) || *barrier == ((void*)0))
  return (EINVAL);

 if (*barrier == THR_PSHARED_PTR) {
  bar = __thr_pshared_offpage(barrier, 0);
  if (bar == ((void*)0))
   return (EINVAL);
 } else {
  bar = *barrier;
 }
 curthread = _get_curthread();
 THR_UMUTEX_LOCK(curthread, &bar->b_lock);
 if (++bar->b_waiters == bar->b_count) {

  bar->b_waiters = 0;
  bar->b_cycle++;
  _thr_ucond_broadcast(&bar->b_cv);
  THR_UMUTEX_UNLOCK(curthread, &bar->b_lock);
  ret = PTHREAD_BARRIER_SERIAL_THREAD;
 } else {
  cycle = bar->b_cycle;
  bar->b_refcount++;
  do {
   _thr_ucond_wait(&bar->b_cv, &bar->b_lock, ((void*)0), 0);
   THR_UMUTEX_LOCK(curthread, &bar->b_lock);

  } while (cycle == bar->b_cycle);
  if (--bar->b_refcount == 0 && bar->b_destroying)
   _thr_ucond_broadcast(&bar->b_cv);
  THR_UMUTEX_UNLOCK(curthread, &bar->b_lock);
  ret = 0;
 }
 return (ret);
}
