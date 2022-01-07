
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
struct futex_queue {int dummy; } ;
struct futex_waiter {int fw_locked; struct futex_queue fw_donated; } ;
struct futex_lock {scalar_t__ fl_owner; int fl_writers; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_lock_t ;
typedef int cloudabi_clockid_t ;


 int EBUSY ;
 int KASSERT (int,char*) ;
 scalar_t__ LOCK_UNMANAGED ;
 int UINT_MAX ;
 int futex_lock_trywrlock (struct futex_lock*,int *,int ,int) ;
 int futex_lock_unmanage (struct futex_lock*,int *) ;
 scalar_t__ futex_queue_count (struct futex_queue*) ;
 int futex_queue_requeue (struct futex_queue*,int *,int ) ;
 int futex_queue_sleep (int *,struct futex_lock*,struct futex_waiter*,struct thread*,int ,int ,int ,int) ;
 int futex_queue_wake_up_donate (struct futex_queue*,int ) ;

__attribute__((used)) static int
futex_lock_wrlock(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime,
    struct futex_queue *donated)
{
 struct futex_waiter fw;
 int error;

 error = futex_lock_trywrlock(fl, lock, td->td_tid,
     futex_queue_count(donated) > 0);

 if (error == 0 || error == EBUSY) {

  KASSERT(futex_queue_count(donated) == 0 ||
      fl->fl_owner != LOCK_UNMANAGED,
      ("Lock should be managed if we are going to donate"));
  futex_queue_requeue(donated, &fl->fl_writers, UINT_MAX);
 } else {




  futex_queue_wake_up_donate(donated, UINT_MAX);
 }

 if (error == EBUSY) {

  KASSERT(fl->fl_owner != LOCK_UNMANAGED,
      ("Attempted to sleep on an unmanaged lock"));
  error = futex_queue_sleep(&fl->fl_writers, fl, &fw, td,
      clock_id, timeout, precision, abstime);
  KASSERT((error == 0) == fw.fw_locked,
      ("Should have locked write lock on success"));
  KASSERT(futex_queue_count(&fw.fw_donated) == 0,
      ("Lock functions cannot receive threads"));
 }
 if (error != 0)
  futex_lock_unmanage(fl, lock);
 return (error);
}
