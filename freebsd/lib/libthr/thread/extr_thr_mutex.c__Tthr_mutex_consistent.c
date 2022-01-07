
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_flags; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;
typedef struct pthread_mutex* pthread_mutex_t ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ PMUTEX_OWNER_ID (struct pthread_mutex*) ;
 struct pthread_mutex* THR_MUTEX_DESTROYED ;
 struct pthread_mutex* THR_PSHARED_PTR ;
 scalar_t__ TID (struct pthread*) ;
 int UMUTEX_NONCONSISTENT ;
 int UMUTEX_ROBUST ;
 struct pthread_mutex* __thr_pshared_offpage (struct pthread_mutex**,int ) ;
 struct pthread* _get_curthread () ;
 int shared_mutex_init (struct pthread_mutex*,int *) ;

int
_Tthr_mutex_consistent(pthread_mutex_t *mutex)
{
 struct pthread_mutex *m;
 struct pthread *curthread;

 if (*mutex == THR_PSHARED_PTR) {
  m = __thr_pshared_offpage(mutex, 0);
  if (m == ((void*)0))
   return (EINVAL);
  shared_mutex_init(m, ((void*)0));
 } else {
  m = *mutex;
  if (m <= THR_MUTEX_DESTROYED)
   return (EINVAL);
 }
 curthread = _get_curthread();
 if ((m->m_lock.m_flags & (UMUTEX_ROBUST | UMUTEX_NONCONSISTENT)) !=
     (UMUTEX_ROBUST | UMUTEX_NONCONSISTENT))
  return (EINVAL);
 if (PMUTEX_OWNER_ID(m) != TID(curthread))
  return (EPERM);
 m->m_lock.m_flags &= ~UMUTEX_NONCONSISTENT;
 return (0);
}
