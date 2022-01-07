
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockstate; int env; } ;
typedef TYPE_1__ RtldLockState ;





 int assert (int ) ;
 int siglongjmp (int ,int) ;

void
lock_restart_for_upgrade(RtldLockState *lockstate)
{

 if (lockstate == ((void*)0))
  return;

 switch (lockstate->lockstate) {
 case 129:
 case 128:
  break;
 case 130:
  siglongjmp(lockstate->env, 1);
  break;
 default:
  assert(0);
 }
}
