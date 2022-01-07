
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {scalar_t__ fl_owner; } ;
typedef int cloudabi_lock_t ;


 scalar_t__ LOCK_OWNER_UNKNOWN ;
 int futex_lock_set_owner (struct futex_lock*,int ) ;
 int futex_user_load (int *,int *) ;

__attribute__((used)) static int
futex_lock_update_owner(struct futex_lock *fl, cloudabi_lock_t *address)
{
 cloudabi_lock_t lock;
 int error;

 if (fl->fl_owner == LOCK_OWNER_UNKNOWN) {
  error = futex_user_load(address, &lock);
  if (error != 0)
   return (error);
  futex_lock_set_owner(fl, lock);
 }
 return (0);
}
