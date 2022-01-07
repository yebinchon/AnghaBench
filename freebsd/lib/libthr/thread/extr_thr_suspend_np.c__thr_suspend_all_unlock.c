
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int INT_MAX ;
 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 int * _single_thread ;
 int _suspend_all_cycle ;
 int _suspend_all_lock ;
 scalar_t__ _suspend_all_waiters ;
 int _thr_umtx_wake (int *,int ,int ) ;

void
_thr_suspend_all_unlock(struct pthread *curthread)
{

 THR_LOCK_ACQUIRE(curthread, &_suspend_all_lock);
 _single_thread = ((void*)0);
 if (_suspend_all_waiters != 0) {
  _suspend_all_cycle++;
  _thr_umtx_wake(&_suspend_all_cycle, INT_MAX, 0);
 }
 THR_LOCK_RELEASE(curthread, &_suspend_all_lock);
}
