
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pthread {int dummy; } ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ pthread_once_t ;


 int EINVAL ;
 int INT_MAX ;
 int ONCE_DONE ;
 int ONCE_IN_PROGRESS ;
 int ONCE_NEVER_DONE ;
 int ONCE_WAIT ;
 int THR_CLEANUP_POP (struct pthread*,int ) ;
 int THR_CLEANUP_PUSH (struct pthread*,int ,TYPE_1__*) ;
 struct pthread* _get_curthread () ;
 int _thr_check_init () ;
 int _thr_umtx_wait_uint (int*,int,int *,int ) ;
 int _thr_umtx_wake (int*,int ,int ) ;
 scalar_t__ atomic_cmpset_int (int*,int,int) ;
 scalar_t__ atomic_cmpset_rel_int (int*,int,int) ;
 int atomic_store_rel_int (int*,int) ;
 int atomic_thread_fence_acq () ;
 int once_cancel_handler ;

int
_thr_once(pthread_once_t *once_control, void (*init_routine)(void))
{
 struct pthread *curthread;
 int state;

 _thr_check_init();

 for (;;) {
  state = once_control->state;
  if (state == ONCE_DONE) {
   atomic_thread_fence_acq();
   return (0);
  }
  if (state == ONCE_NEVER_DONE) {
   if (atomic_cmpset_int(&once_control->state, state,
       ONCE_IN_PROGRESS))
    break;
  } else if (state == ONCE_IN_PROGRESS) {
   if (atomic_cmpset_int(&once_control->state, state,
       ONCE_WAIT))
    _thr_umtx_wait_uint(&once_control->state,
        ONCE_WAIT, ((void*)0), 0);
  } else if (state == ONCE_WAIT) {
   _thr_umtx_wait_uint(&once_control->state, state,
       ((void*)0), 0);
  } else
   return (EINVAL);
        }

 curthread = _get_curthread();
 THR_CLEANUP_PUSH(curthread, once_cancel_handler, once_control);
 init_routine();
 THR_CLEANUP_POP(curthread, 0);
 if (atomic_cmpset_rel_int(&once_control->state, ONCE_IN_PROGRESS,
     ONCE_DONE))
  return (0);
 atomic_store_rel_int(&once_control->state, ONCE_DONE);
 _thr_umtx_wake(&once_control->state, INT_MAX, 0);
 return (0);
}
