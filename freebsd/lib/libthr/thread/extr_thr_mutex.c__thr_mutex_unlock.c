
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int dummy; } ;
typedef struct pthread_mutex* pthread_mutex_t ;


 int EINVAL ;
 struct pthread_mutex* THR_PSHARED_PTR ;
 struct pthread_mutex* __thr_pshared_offpage (struct pthread_mutex**,int ) ;
 int mutex_unlock_common (struct pthread_mutex*,int,int *) ;
 int shared_mutex_init (struct pthread_mutex*,int *) ;

int
_thr_mutex_unlock(pthread_mutex_t *mutex)
{
 struct pthread_mutex *mp;

 if (*mutex == THR_PSHARED_PTR) {
  mp = __thr_pshared_offpage(mutex, 0);
  if (mp == ((void*)0))
   return (EINVAL);
  shared_mutex_init(mp, ((void*)0));
 } else {
  mp = *mutex;
 }
 return (mutex_unlock_common(mp, 0, ((void*)0)));
}
