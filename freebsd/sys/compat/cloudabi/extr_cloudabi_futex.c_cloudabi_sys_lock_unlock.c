
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_lock {int dummy; } ;
struct cloudabi_sys_lock_unlock_args {int lock; int scope; } ;


 int futex_lock_lookup (struct thread*,int ,int ,struct futex_lock**) ;
 int futex_lock_release (struct futex_lock*) ;
 int futex_lock_unlock (struct futex_lock*,struct thread*,int ) ;

int
cloudabi_sys_lock_unlock(struct thread *td,
    struct cloudabi_sys_lock_unlock_args *uap)
{
 struct futex_lock *fl;
 int error;

 error = futex_lock_lookup(td, uap->lock, uap->scope, &fl);
 if (error != 0)
  return (error);
 error = futex_lock_unlock(fl, td, uap->lock);
 futex_lock_release(fl);
 return (error);
}
