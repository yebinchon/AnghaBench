
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {int fl_owner; int fl_readers; int fl_writers; } ;
typedef int cloudabi_tid_t ;
typedef int cloudabi_lock_t ;


 int CLOUDABI_LOCK_KERNEL_MANAGED ;
 int CLOUDABI_LOCK_WRLOCKED ;
 void* LOCK_UNMANAGED ;
 int futex_queue_count (int *) ;
 int futex_queue_tid_best (int *) ;
 int futex_queue_wake_up_all (int *) ;
 int futex_queue_wake_up_best (int *) ;
 int futex_user_store (int *,int) ;

__attribute__((used)) static int
futex_lock_wake_up_next(struct futex_lock *fl, cloudabi_lock_t *lock)
{
 cloudabi_tid_t tid;
 int error;





 if (futex_queue_count(&fl->fl_writers) > 0) {

  if (futex_queue_count(&fl->fl_writers) > 1 ||
      futex_queue_count(&fl->fl_readers) > 0) {

   tid = futex_queue_tid_best(&fl->fl_writers);
   error = futex_user_store(lock,
       tid | CLOUDABI_LOCK_WRLOCKED |
       CLOUDABI_LOCK_KERNEL_MANAGED);
   if (error != 0)
    return (error);

   futex_queue_wake_up_best(&fl->fl_writers);
   fl->fl_owner = tid;
  } else {

   error = futex_user_store(lock,
       futex_queue_tid_best(&fl->fl_writers) |
       CLOUDABI_LOCK_WRLOCKED);
   if (error != 0)
    return (error);

   futex_queue_wake_up_best(&fl->fl_writers);
   fl->fl_owner = LOCK_UNMANAGED;
  }
 } else {

  error = futex_user_store(lock,
      futex_queue_count(&fl->fl_readers));
  if (error != 0)
   return (error);


  futex_queue_wake_up_all(&fl->fl_readers);
  fl->fl_owner = LOCK_UNMANAGED;
 }
 return (0);
}
