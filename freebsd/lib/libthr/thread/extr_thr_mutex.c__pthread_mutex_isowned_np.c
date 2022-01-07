
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int dummy; } ;
typedef struct pthread_mutex* pthread_mutex_t ;


 scalar_t__ PMUTEX_OWNER_ID (struct pthread_mutex*) ;
 struct pthread_mutex* THR_MUTEX_DESTROYED ;
 struct pthread_mutex* THR_PSHARED_PTR ;
 scalar_t__ TID (int ) ;
 struct pthread_mutex* __thr_pshared_offpage (struct pthread_mutex**,int ) ;
 int _get_curthread () ;
 int shared_mutex_init (struct pthread_mutex*,int *) ;

int
_pthread_mutex_isowned_np(pthread_mutex_t *mutex)
{
 struct pthread_mutex *m;

 if (*mutex == THR_PSHARED_PTR) {
  m = __thr_pshared_offpage(mutex, 0);
  if (m == ((void*)0))
   return (0);
  shared_mutex_init(m, ((void*)0));
 } else {
  m = *mutex;
  if (m <= THR_MUTEX_DESTROYED)
   return (0);
 }
 return (PMUTEX_OWNER_ID(m) == TID(_get_curthread()));
}
