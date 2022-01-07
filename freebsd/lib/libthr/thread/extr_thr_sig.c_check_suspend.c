
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pthread {int flags; scalar_t__ state; int critical_count; int lock; scalar_t__ cycle; scalar_t__ force_exit; } ;


 int INT_MAX ;
 scalar_t__ PS_DEAD ;
 int THR_FLAGS_NEED_SUSPEND ;
 int THR_FLAGS_SUSPENDED ;
 int THR_UMUTEX_LOCK (struct pthread*,int *) ;
 int THR_UMUTEX_UNLOCK (struct pthread*,int *) ;
 scalar_t__ __predict_true (int) ;
 struct pthread* _single_thread ;
 int _thr_signal_block (struct pthread*) ;
 int _thr_signal_unblock (struct pthread*) ;
 int _thr_umtx_wait_uint (scalar_t__*,scalar_t__,int *,int ) ;
 int _thr_umtx_wake (scalar_t__*,int ,int ) ;

__attribute__((used)) static void
check_suspend(struct pthread *curthread)
{
 uint32_t cycle;

 if (__predict_true((curthread->flags &
  (THR_FLAGS_NEED_SUSPEND | THR_FLAGS_SUSPENDED))
  != THR_FLAGS_NEED_SUSPEND))
  return;
 if (curthread == _single_thread)
  return;
 if (curthread->force_exit)
  return;




 _thr_signal_block(curthread);






 curthread->critical_count++;
 THR_UMUTEX_LOCK(curthread, &(curthread)->lock);
 while ((curthread->flags & THR_FLAGS_NEED_SUSPEND) != 0) {
  curthread->cycle++;
  cycle = curthread->cycle;


  _thr_umtx_wake(&curthread->cycle, INT_MAX, 0);





  if (curthread->state == PS_DEAD)
   break;
  curthread->flags |= THR_FLAGS_SUSPENDED;
  THR_UMUTEX_UNLOCK(curthread, &(curthread)->lock);
  _thr_umtx_wait_uint(&curthread->cycle, cycle, ((void*)0), 0);
  THR_UMUTEX_LOCK(curthread, &(curthread)->lock);
 }
 THR_UMUTEX_UNLOCK(curthread, &(curthread)->lock);
 curthread->critical_count--;

 _thr_signal_unblock(curthread);
}
