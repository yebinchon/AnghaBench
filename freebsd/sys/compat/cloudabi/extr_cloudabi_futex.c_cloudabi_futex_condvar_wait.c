
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_waiter {int fw_donated; scalar_t__ fw_locked; } ;
struct futex_lock {int dummy; } ;
struct futex_condvar {int fc_waitcount; struct futex_lock* fc_lock; int fc_waiters; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_scope_t ;
typedef int cloudabi_lock_t ;
typedef int cloudabi_condvar_t ;
typedef int cloudabi_clockid_t ;


 int CLOUDABI_CLOCK_MONOTONIC ;
 int CLOUDABI_CONDVAR_HAS_NO_WAITERS ;
 int ETIMEDOUT ;
 int KASSERT (int,char*) ;
 int UINT64_MAX ;
 int futex_condvar_lookup_or_create (struct thread*,int *,int ,int *,int ,struct futex_condvar**) ;
 int futex_condvar_release (struct futex_condvar*) ;
 int futex_condvar_unmanage (struct futex_condvar*,int *) ;
 int futex_lock_unlock (struct futex_lock*,struct thread*,int *) ;
 int futex_lock_unmanage (struct futex_lock*,int *) ;
 int futex_lock_wrlock (struct futex_lock*,struct thread*,int *,int ,int ,int ,int,int *) ;
 scalar_t__ futex_queue_count (int *) ;
 int futex_queue_sleep (int *,struct futex_lock*,struct futex_waiter*,struct thread*,int ,int ,int ,int) ;
 int futex_user_store (int *,int ) ;

int
cloudabi_futex_condvar_wait(struct thread *td, cloudabi_condvar_t *condvar,
    cloudabi_scope_t condvar_scope, cloudabi_lock_t *lock,
    cloudabi_scope_t lock_scope, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
 struct futex_condvar *fc;
 struct futex_lock *fl;
 struct futex_waiter fw;
 int error, error2;


 error = futex_condvar_lookup_or_create(td, condvar, condvar_scope, lock,
     lock_scope, &fc);
 if (error != 0)
  return (error);
 fl = fc->fc_lock;






 error = futex_user_store(condvar, ~CLOUDABI_CONDVAR_HAS_NO_WAITERS);
 if (error != 0) {
  futex_condvar_release(fc);
  return (error);
 }


 error = futex_lock_unlock(fl, td, lock);
 if (error != 0) {
  futex_condvar_unmanage(fc, condvar);
  futex_condvar_release(fc);
  return (error);
 }


 ++fc->fc_waitcount;
 error = futex_queue_sleep(&fc->fc_waiters, fc->fc_lock, &fw, td,
     clock_id, timeout, precision, abstime);
 if (fw.fw_locked) {

  KASSERT(futex_queue_count(&fw.fw_donated) == 0,
      ("Received threads while being locked"));
 } else if (error == 0 || error == ETIMEDOUT) {
  if (error != 0)
   futex_condvar_unmanage(fc, condvar);
  error2 = futex_lock_wrlock(fl, td, lock,
      CLOUDABI_CLOCK_MONOTONIC, UINT64_MAX, 0, abstime,
      &fw.fw_donated);
  if (error2 != 0)
   error = error2;
 } else {
  KASSERT(futex_queue_count(&fw.fw_donated) == 0,
      ("Received threads on error"));
  futex_condvar_unmanage(fc, condvar);
  futex_lock_unmanage(fl, lock);
 }
 --fc->fc_waitcount;
 futex_condvar_release(fc);
 return (error);
}
