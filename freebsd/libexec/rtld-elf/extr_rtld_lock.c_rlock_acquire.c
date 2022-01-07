
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* rtld_lock_t ;
struct TYPE_8__ {int (* rlock_acquire ) (int ) ;} ;
struct TYPE_7__ {int lockstate; } ;
struct TYPE_6__ {int mask; int handle; } ;
typedef TYPE_2__ RtldLockState ;


 int RTLD_LOCK_RLOCKED ;
 int RTLD_LOCK_UNLOCKED ;
 int dbg (char*) ;
 TYPE_5__ lockinfo ;
 int stub1 (int ) ;
 int thread_mask_set (int) ;

void
rlock_acquire(rtld_lock_t lock, RtldLockState *lockstate)
{

 if (lockstate == ((void*)0))
  return;

 if (thread_mask_set(lock->mask) & lock->mask) {
  dbg("rlock_acquire: recursed");
  lockstate->lockstate = RTLD_LOCK_UNLOCKED;
  return;
 }
 lockinfo.rlock_acquire(lock->handle);
 lockstate->lockstate = RTLD_LOCK_RLOCKED;
}
