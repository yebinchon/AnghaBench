
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ls ;
struct TYPE_4__ {int lockstate; } ;
typedef TYPE_1__ RtldLockState ;


 int bzero (TYPE_1__*,int) ;
 int lock_release (int ,TYPE_1__*) ;
 int rtld_bind_lock ;
 int rtld_phdr_lock ;

void
_rtld_atfork_post(int *locks)
{
 RtldLockState ls[2];

 if (locks == ((void*)0))
  return;

 bzero(ls, sizeof(ls));
 ls[0].lockstate = locks[2];
 ls[1].lockstate = locks[0];
 lock_release(rtld_bind_lock, &ls[1]);
 lock_release(rtld_phdr_lock, &ls[0]);
}
