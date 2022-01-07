
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_count; int m_flags; } ;
struct pthread {scalar_t__ nwaiter_defer; int defer_waiters; } ;


 int PMUTEX_FLAG_DEFERRED ;
 struct pthread* _get_curthread () ;
 int _mutex_owned (struct pthread*,struct pthread_mutex*) ;
 int _thr_wake_all (int ,scalar_t__) ;
 int dequeue_mutex (struct pthread*,struct pthread_mutex*) ;

int
_mutex_cv_detach(struct pthread_mutex *mp, int *recurse)
{
 struct pthread *curthread;
 int deferred, error;

 curthread = _get_curthread();
 if ((error = _mutex_owned(curthread, mp)) != 0)
  return (error);




 *recurse = mp->m_count;
 mp->m_count = 0;
 dequeue_mutex(curthread, mp);


        if ((mp->m_flags & PMUTEX_FLAG_DEFERRED) != 0) {
  deferred = 1;
  mp->m_flags &= ~PMUTEX_FLAG_DEFERRED;
 } else
  deferred = 0;

 if (deferred) {
  _thr_wake_all(curthread->defer_waiters,
      curthread->nwaiter_defer);
  curthread->nwaiter_defer = 0;
 }
 return (0);
}
