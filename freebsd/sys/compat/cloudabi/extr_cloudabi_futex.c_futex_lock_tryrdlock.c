
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {scalar_t__ fl_owner; } ;
typedef int cloudabi_lock_t ;


 int CLOUDABI_LOCK_KERNEL_MANAGED ;
 int CLOUDABI_LOCK_UNLOCKED ;
 int CLOUDABI_LOCK_WRLOCKED ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ LOCK_UNMANAGED ;
 int futex_lock_set_owner (struct futex_lock*,int) ;
 int futex_user_cmpxchg (int*,int,int*,int) ;

__attribute__((used)) static int
futex_lock_tryrdlock(struct futex_lock *fl, cloudabi_lock_t *address)
{
 cloudabi_lock_t old, cmp;
 int error;

 if (fl->fl_owner != LOCK_UNMANAGED) {

  return (EBUSY);
 }

 old = CLOUDABI_LOCK_UNLOCKED;
 for (;;) {
  if ((old & CLOUDABI_LOCK_KERNEL_MANAGED) != 0) {




   return (EINVAL);
  }

  if ((old & CLOUDABI_LOCK_WRLOCKED) == 0) {




   cmp = old;
   error = futex_user_cmpxchg(address, cmp, &old, cmp + 1);
   if (error != 0)
    return (error);
   if (old == cmp) {

    return (0);
   }
  } else {

   cmp = old;
   error = futex_user_cmpxchg(address, cmp, &old,
       cmp | CLOUDABI_LOCK_KERNEL_MANAGED);
   if (error != 0)
    return (error);
   if (old == cmp) {

    futex_lock_set_owner(fl, cmp);
    return (EBUSY);
   }
  }
 }
}
