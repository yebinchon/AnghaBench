
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_lock {scalar_t__ fl_owner; int fl_writers; } ;
struct futex_condvar {int fc_waiters; struct futex_lock* fc_lock; } ;
struct cloudabi_sys_condvar_signal_args {scalar_t__ nwaiters; int condvar; int scope; } ;
typedef scalar_t__ cloudabi_nthreads_t ;


 int ENOENT ;
 scalar_t__ LOCK_UNMANAGED ;
 int futex_condvar_lookup (struct thread*,int ,int ,struct futex_condvar**) ;
 int futex_condvar_release (struct futex_condvar*) ;
 int futex_condvar_unmanage (struct futex_condvar*,int ) ;
 int futex_queue_requeue (int *,int *,scalar_t__) ;
 int futex_queue_wake_up_donate (int *,scalar_t__) ;

int
cloudabi_sys_condvar_signal(struct thread *td,
    struct cloudabi_sys_condvar_signal_args *uap)
{
 struct futex_condvar *fc;
 struct futex_lock *fl;
 cloudabi_nthreads_t nwaiters;
 int error;

 nwaiters = uap->nwaiters;
 if (nwaiters == 0) {

  return (0);
 }


 error = futex_condvar_lookup(td, uap->condvar, uap->scope, &fc);
 if (error != 0) {

  return (error == ENOENT ? 0 : error);
 }
 fl = fc->fc_lock;

 if (fl->fl_owner == LOCK_UNMANAGED) {
  futex_queue_wake_up_donate(&fc->fc_waiters, nwaiters - 1);
 } else {





  futex_queue_requeue(&fc->fc_waiters, &fl->fl_writers, nwaiters);
 }


 error = futex_condvar_unmanage(fc, uap->condvar);
 futex_condvar_release(fc);
 return (error);
}
