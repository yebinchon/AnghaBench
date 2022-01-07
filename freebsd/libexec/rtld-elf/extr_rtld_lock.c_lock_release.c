
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* rtld_lock_t ;
struct TYPE_8__ {int (* lock_release ) (int ) ;} ;
struct TYPE_7__ {int lockstate; } ;
struct TYPE_6__ {int handle; int mask; } ;
typedef TYPE_2__ RtldLockState ;





 int assert (int ) ;
 TYPE_3__ lockinfo ;
 int stub1 (int ) ;
 int thread_mask_clear (int ) ;

void
lock_release(rtld_lock_t lock, RtldLockState *lockstate)
{

 if (lockstate == ((void*)0))
  return;

 switch (lockstate->lockstate) {
 case 129:
  break;
 case 130:
 case 128:
  thread_mask_clear(lock->mask);
  lockinfo.lock_release(lock->handle);
  break;
 default:
  assert(0);
 }
}
