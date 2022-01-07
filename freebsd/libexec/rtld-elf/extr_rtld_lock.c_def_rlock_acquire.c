
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
typedef TYPE_1__ Lock ;


 int RC_INCR ;
 int WAFLAG ;
 int atomic_add_acq_int (int*,int ) ;

__attribute__((used)) static void
def_rlock_acquire(void *lock)
{
    Lock *l = (Lock *)lock;

    atomic_add_acq_int(&l->lock, RC_INCR);
    while (l->lock & WAFLAG)
     ;
}
