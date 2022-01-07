
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_tid; } ;
struct futex_lock {scalar_t__ fl_owner; } ;
typedef int cloudabi_lock_t ;


 int EPERM ;
 scalar_t__ LOCK_UNMANAGED ;
 int futex_lock_update_owner (struct futex_lock*,int *) ;
 int futex_lock_wake_up_next (struct futex_lock*,int *) ;

__attribute__((used)) static int
futex_lock_unlock(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock)
{
 int error;


 error = futex_lock_update_owner(fl, lock);
 if (error != 0)
  return (error);
 if (fl->fl_owner != LOCK_UNMANAGED && fl->fl_owner != td->td_tid)
  return (EPERM);
 return (futex_lock_wake_up_next(fl, lock));
}
