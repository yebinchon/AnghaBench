
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockstate; } ;
typedef TYPE_1__ RtldLockState ;


 int rtld_bind_lock ;
 int rtld_phdr_lock ;
 int wlock_acquire (int ,TYPE_1__*) ;

void
_rtld_atfork_pre(int *locks)
{
 RtldLockState ls[2];

 if (locks == ((void*)0))
  return;
 wlock_acquire(rtld_phdr_lock, &ls[0]);
 wlock_acquire(rtld_bind_lock, &ls[1]);


 locks[0] = ls[1].lockstate;
 locks[2] = ls[0].lockstate;
}
