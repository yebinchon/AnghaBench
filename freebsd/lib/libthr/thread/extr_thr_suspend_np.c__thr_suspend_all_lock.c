
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 struct pthread* _single_thread ;
 int _suspend_all_cycle ;
 int _suspend_all_lock ;
 int _suspend_all_waiters ;
 int _thr_umtx_wait_uint (int*,int,int *,int ) ;

void
_thr_suspend_all_lock(struct pthread *curthread)
{
 int old;

 THR_LOCK_ACQUIRE(curthread, &_suspend_all_lock);
 while (_single_thread != ((void*)0)) {
  old = _suspend_all_cycle;
  _suspend_all_waiters++;
  THR_LOCK_RELEASE(curthread, &_suspend_all_lock);
  _thr_umtx_wait_uint(&_suspend_all_cycle, old, ((void*)0), 0);
  THR_LOCK_ACQUIRE(curthread, &_suspend_all_lock);
  _suspend_all_waiters--;
 }
 _single_thread = curthread;
 THR_LOCK_RELEASE(curthread, &_suspend_all_lock);
}
