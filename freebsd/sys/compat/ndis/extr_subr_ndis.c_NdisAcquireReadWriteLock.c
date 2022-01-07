
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int * nrl_rsvd; int nrl_spinlock; } ;
typedef TYPE_1__ ndis_rw_lock ;
struct TYPE_6__ {int nls_oldirql; } ;
typedef TYPE_2__ ndis_lock_state ;


 int KeAcquireSpinLock (int *,int *) ;
 scalar_t__ TRUE ;

__attribute__((used)) static void
NdisAcquireReadWriteLock(ndis_rw_lock *lock, uint8_t writeacc,
    ndis_lock_state *state)
{
 if (writeacc == TRUE) {
  KeAcquireSpinLock(&lock->nrl_spinlock, &state->nls_oldirql);
  lock->nrl_rsvd[0]++;
 } else
  lock->nrl_rsvd[1]++;
}
