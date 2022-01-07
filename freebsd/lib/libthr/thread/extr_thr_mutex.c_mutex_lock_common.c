
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int m_flags; } ;
struct pthread_mutex {int m_flags; TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;


 int EOWNERDEAD ;
 int PMUTEX_FLAG_PRIVATE ;
 int THR_CRITICAL_ENTER (struct pthread*) ;
 int THR_CRITICAL_LEAVE (struct pthread*) ;
 int TID (struct pthread*) ;
 int UMUTEX_NONCONSISTENT ;
 struct pthread* _get_curthread () ;
 int _mutex_enter_robust (struct pthread*,struct pthread_mutex*) ;
 int _mutex_leave_robust (struct pthread*,struct pthread_mutex*) ;
 int _thr_umutex_trylock2 (TYPE_1__*,int ) ;
 int enqueue_mutex (struct pthread*,struct pthread_mutex*,int) ;
 int mutex_lock_sleep (struct pthread*,struct pthread_mutex*,struct timespec const*) ;

__attribute__((used)) static inline int
mutex_lock_common(struct pthread_mutex *m, const struct timespec *abstime,
    bool cvattach, bool rb_onlist)
{
 struct pthread *curthread;
 int ret, robust;

 robust = 0;
 curthread = _get_curthread();
 if (!cvattach && m->m_flags & PMUTEX_FLAG_PRIVATE)
  THR_CRITICAL_ENTER(curthread);
 if (!rb_onlist)
  robust = _mutex_enter_robust(curthread, m);
 ret = _thr_umutex_trylock2(&m->m_lock, TID(curthread));
 if (ret == 0 || ret == EOWNERDEAD) {
  enqueue_mutex(curthread, m, ret);
  if (ret == EOWNERDEAD)
   m->m_lock.m_flags |= UMUTEX_NONCONSISTENT;
 } else {
  ret = mutex_lock_sleep(curthread, m, abstime);
 }
 if (!rb_onlist && robust)
  _mutex_leave_robust(curthread, m);
 if (ret != 0 && ret != EOWNERDEAD &&
     (m->m_flags & PMUTEX_FLAG_PRIVATE) != 0 && !cvattach)
  THR_CRITICAL_LEAVE(curthread);
 return (ret);
}
