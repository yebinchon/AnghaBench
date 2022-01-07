
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_lock {int dummy; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_scope_t ;
typedef int cloudabi_lock_t ;
typedef int cloudabi_clockid_t ;


 int futex_lock_lookup (struct thread*,int *,int ,struct futex_lock**) ;
 int futex_lock_rdlock (struct futex_lock*,struct thread*,int *,int ,int ,int ,int) ;
 int futex_lock_release (struct futex_lock*) ;

int
cloudabi_futex_lock_rdlock(struct thread *td, cloudabi_lock_t *lock,
    cloudabi_scope_t scope, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
 struct futex_lock *fl;
 int error;


 error = futex_lock_lookup(td, lock, scope, &fl);
 if (error != 0)
  return (error);

 error = futex_lock_rdlock(fl, td, lock, clock_id, timeout,
     precision, abstime);
 futex_lock_release(fl);
 return (error);
}
