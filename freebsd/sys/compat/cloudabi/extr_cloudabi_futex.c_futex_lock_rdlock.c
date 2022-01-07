
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_waiter {int fw_locked; int fw_donated; } ;
struct futex_lock {scalar_t__ fl_owner; int fl_readers; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_lock_t ;
typedef int cloudabi_clockid_t ;


 int EBUSY ;
 int KASSERT (int,char*) ;
 scalar_t__ LOCK_UNMANAGED ;
 int futex_lock_tryrdlock (struct futex_lock*,int *) ;
 int futex_lock_unmanage (struct futex_lock*,int *) ;
 scalar_t__ futex_queue_count (int *) ;
 int futex_queue_sleep (int *,struct futex_lock*,struct futex_waiter*,struct thread*,int ,int ,int ,int) ;

__attribute__((used)) static int
futex_lock_rdlock(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
 struct futex_waiter fw;
 int error;

 error = futex_lock_tryrdlock(fl, lock);
 if (error == EBUSY) {

  KASSERT(fl->fl_owner != LOCK_UNMANAGED,
      ("Attempted to sleep on an unmanaged lock"));
  error = futex_queue_sleep(&fl->fl_readers, fl, &fw, td,
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
