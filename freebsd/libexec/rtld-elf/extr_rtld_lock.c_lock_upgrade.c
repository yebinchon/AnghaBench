
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtld_lock_t ;
typedef int RtldLockState ;


 int lock_release (int ,int *) ;
 int wlock_acquire (int ,int *) ;

void
lock_upgrade(rtld_lock_t lock, RtldLockState *lockstate)
{

 if (lockstate == ((void*)0))
  return;

 lock_release(lock, lockstate);
 wlock_acquire(lock, lockstate);
}
