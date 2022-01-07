
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtld_lock {int lock; } ;
struct pthread {int rdlock_count; } ;


 int RESTORE_ERRNO () ;
 int SAVE_ERRNO () ;
 int THR_CRITICAL_ENTER (struct pthread*) ;
 struct pthread* _get_curthread () ;
 scalar_t__ _thr_rwlock_rdlock (int *,int ,int *) ;

__attribute__((used)) static void
_thr_rtld_rlock_acquire(void *lock)
{
 struct pthread *curthread;
 struct rtld_lock *l;
 int errsave;

 curthread = _get_curthread();
 SAVE_ERRNO();
 l = (struct rtld_lock *)lock;

 THR_CRITICAL_ENTER(curthread);
 while (_thr_rwlock_rdlock(&l->lock, 0, ((void*)0)) != 0)
  ;
 curthread->rdlock_count++;
 RESTORE_ERRNO();
}
