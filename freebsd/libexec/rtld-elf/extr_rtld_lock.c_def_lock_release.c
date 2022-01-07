
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
typedef TYPE_1__ Lock ;


 int RC_INCR ;
 int SIG_SETMASK ;
 int WAFLAG ;
 int assert (int) ;
 int atomic_add_rel_int (int*,int) ;
 int atomic_fetchadd_int (scalar_t__*,int) ;
 int oldsigmask ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ wnested ;

__attribute__((used)) static void
def_lock_release(void *lock)
{
 Lock *l;

 l = (Lock *)lock;
 if ((l->lock & WAFLAG) == 0)
  atomic_add_rel_int(&l->lock, -RC_INCR);
 else {
  assert(wnested > 0);
  atomic_add_rel_int(&l->lock, -WAFLAG);
  if (atomic_fetchadd_int(&wnested, -1) == 1)
   sigprocmask(SIG_SETMASK, &oldsigmask, ((void*)0));
 }
}
