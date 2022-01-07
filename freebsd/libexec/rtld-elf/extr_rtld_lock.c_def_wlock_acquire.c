
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_2__ {int lock; } ;
typedef TYPE_1__ Lock ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int WAFLAG ;
 scalar_t__ atomic_cmpset_acq_int (int *,int ,int ) ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int fullsigmask ;
 int oldsigmask ;
 int sigprocmask (int ,int *,int *) ;
 int wnested ;

__attribute__((used)) static void
def_wlock_acquire(void *lock)
{
 Lock *l;
 sigset_t tmp_oldsigmask;

 l = (Lock *)lock;
 for (;;) {
  sigprocmask(SIG_BLOCK, &fullsigmask, &tmp_oldsigmask);
  if (atomic_cmpset_acq_int(&l->lock, 0, WAFLAG))
   break;
  sigprocmask(SIG_SETMASK, &tmp_oldsigmask, ((void*)0));
 }
 if (atomic_fetchadd_int(&wnested, 1) == 0)
  oldsigmask = tmp_oldsigmask;
}
