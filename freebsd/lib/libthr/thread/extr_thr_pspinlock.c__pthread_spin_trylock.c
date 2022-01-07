
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_spinlock {int s_lock; } ;
typedef struct pthread_spinlock* pthread_spinlock_t ;


 int EINVAL ;
 struct pthread_spinlock* THR_PSHARED_PTR ;
 int THR_UMUTEX_TRYLOCK (int ,int *) ;
 struct pthread_spinlock* __thr_pshared_offpage (struct pthread_spinlock**,int ) ;
 int _get_curthread () ;

int
_pthread_spin_trylock(pthread_spinlock_t *lock)
{
 struct pthread_spinlock *lck;

 if (lock == ((void*)0) || *lock == ((void*)0))
  return (EINVAL);
 lck = *lock == THR_PSHARED_PTR ? __thr_pshared_offpage(lock, 0) : *lock;
 if (lck == ((void*)0))
  return (EINVAL);
 return (THR_UMUTEX_TRYLOCK(_get_curthread(), &lck->s_lock));
}
