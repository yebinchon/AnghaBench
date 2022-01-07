
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {int fl_owner; int fl_writers; int fl_readers; } ;
typedef int cloudabi_lock_t ;


 int CLOUDABI_LOCK_KERNEL_MANAGED ;
 int LOCK_UNMANAGED ;
 scalar_t__ futex_queue_count (int *) ;
 int futex_user_cmpxchg (int*,int,int*,int) ;
 int futex_user_load (int*,int*) ;

__attribute__((used)) static int
futex_lock_unmanage(struct futex_lock *fl, cloudabi_lock_t *lock)
{
 cloudabi_lock_t cmp, old;
 int error;

 if (futex_queue_count(&fl->fl_readers) == 0 &&
     futex_queue_count(&fl->fl_writers) == 0) {

  fl->fl_owner = LOCK_UNMANAGED;


  error = futex_user_load(lock, &old);
  if (error != 0)
   return (error);
  for (;;) {
   cmp = old;
   error = futex_user_cmpxchg(lock, cmp, &old,
       cmp & ~CLOUDABI_LOCK_KERNEL_MANAGED);
   if (error != 0)
    return (error);
   if (old == cmp)
    break;
  }
 }
 return (0);
}
