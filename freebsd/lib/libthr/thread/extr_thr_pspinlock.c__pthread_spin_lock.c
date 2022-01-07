
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ m_owner; } ;
struct pthread_spinlock {TYPE_1__ s_lock; } ;
struct pthread {int dummy; } ;
typedef struct pthread_spinlock* pthread_spinlock_t ;


 int CPU_SPINWAIT ;
 int EINVAL ;
 int SPIN_COUNT ;
 struct pthread_spinlock* THR_PSHARED_PTR ;
 scalar_t__ THR_UMUTEX_TRYLOCK (struct pthread*,TYPE_1__*) ;
 struct pthread_spinlock* __thr_pshared_offpage (struct pthread_spinlock**,int ) ;
 struct pthread* _get_curthread () ;
 int _pthread_yield () ;
 int _thr_is_smp ;

int
_pthread_spin_lock(pthread_spinlock_t *lock)
{
 struct pthread *curthread;
 struct pthread_spinlock *lck;
 int count;

 if (lock == ((void*)0))
  return (EINVAL);
 lck = *lock == THR_PSHARED_PTR ? __thr_pshared_offpage(lock, 0) : *lock;
 if (lck == ((void*)0))
  return (EINVAL);

 curthread = _get_curthread();
 count = SPIN_COUNT;
 while (THR_UMUTEX_TRYLOCK(curthread, &lck->s_lock) != 0) {
  while (lck->s_lock.m_owner) {
   if (!_thr_is_smp) {
    _pthread_yield();
   } else {
    CPU_SPINWAIT;
    if (--count <= 0) {
     count = SPIN_COUNT;
     _pthread_yield();
    }
   }
  }
 }
 return (0);
}
