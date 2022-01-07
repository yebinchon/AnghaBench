
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_spinlock_t ;


 int EINVAL ;
 int * THR_PSHARED_PTR ;
 int __thr_pshared_destroy (void*) ;
 void* __thr_pshared_offpage (int **,int ) ;
 int free (int *) ;

int
_pthread_spin_destroy(pthread_spinlock_t *lock)
{
 void *l;
 int ret;

 if (lock == ((void*)0) || *lock == ((void*)0)) {
  ret = EINVAL;
 } else if (*lock == THR_PSHARED_PTR) {
  l = __thr_pshared_offpage(lock, 0);
  if (l != ((void*)0))
   __thr_pshared_destroy(l);
  ret = 0;
 } else {
  free(*lock);
  *lock = ((void*)0);
  ret = 0;
 }
 return (ret);
}
