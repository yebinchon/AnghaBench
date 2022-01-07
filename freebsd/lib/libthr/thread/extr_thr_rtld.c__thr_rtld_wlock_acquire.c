
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtld_lock {int lock; } ;
struct pthread {int dummy; } ;


 int RESTORE_ERRNO () ;
 int SAVE_ERRNO () ;
 int THR_CRITICAL_ENTER (struct pthread*) ;
 struct pthread* _get_curthread () ;
 scalar_t__ _thr_rwlock_wrlock (int *,int *) ;

__attribute__((used)) static void
_thr_rtld_wlock_acquire(void *lock)
{
 struct pthread *curthread;
 struct rtld_lock *l;
 int errsave;

 curthread = _get_curthread();
 SAVE_ERRNO();
 l = (struct rtld_lock *)lock;

 THR_CRITICAL_ENTER(curthread);
 while (_thr_rwlock_wrlock(&l->lock, ((void*)0)) != 0)
  ;
 RESTORE_ERRNO();
}
