
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_spinlock {int s_lock; } ;
typedef struct pthread_spinlock* pthread_spinlock_t ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 int PTHREAD_PROCESS_SHARED ;
 struct pthread_spinlock* THR_PSHARED_PTR ;
 struct pthread_spinlock* __thr_pshared_offpage (struct pthread_spinlock**,int) ;
 int _thr_umutex_init (int *) ;
 struct pthread_spinlock* malloc (int) ;

int
_pthread_spin_init(pthread_spinlock_t *lock, int pshared)
{
 struct pthread_spinlock *lck;

 if (lock == ((void*)0))
  return (EINVAL);
 if (pshared == PTHREAD_PROCESS_PRIVATE) {
  lck = malloc(sizeof(struct pthread_spinlock));
  if (lck == ((void*)0))
   return (ENOMEM);
  *lock = lck;
 } else if (pshared == PTHREAD_PROCESS_SHARED) {
  lck = __thr_pshared_offpage(lock, 1);
  if (lck == ((void*)0))
   return (EFAULT);
  *lock = THR_PSHARED_PTR;
 } else {
  return (EINVAL);
 }
 _thr_umutex_init(&lck->s_lock);
 return (0);
}
