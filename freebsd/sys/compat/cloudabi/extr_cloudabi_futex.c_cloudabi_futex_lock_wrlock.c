
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_queue {int dummy; } ;
struct futex_lock {int dummy; } ;
typedef int cloudabi_timestamp_t ;
typedef int cloudabi_scope_t ;
typedef int cloudabi_lock_t ;
typedef int cloudabi_clockid_t ;


 int futex_lock_lookup (struct thread*,int *,int ,struct futex_lock**) ;
 int futex_lock_release (struct futex_lock*) ;
 int futex_lock_wrlock (struct futex_lock*,struct thread*,int *,int ,int ,int ,int,struct futex_queue*) ;
 int futex_queue_init (struct futex_queue*) ;

int
cloudabi_futex_lock_wrlock(struct thread *td, cloudabi_lock_t *lock,
    cloudabi_scope_t scope, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
 struct futex_lock *fl;
 struct futex_queue fq;
 int error;


 error = futex_lock_lookup(td, lock, scope, &fl);
 if (error != 0)
  return (error);

 futex_queue_init(&fq);
 error = futex_lock_wrlock(fl, td, lock, clock_id, timeout,
     precision, abstime, &fq);
 futex_lock_release(fl);
 return (error);
}
