
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int kspin_lock ;


 scalar_t__ atomic_cmpset_acq_int (int volatile*,int ,int) ;

void
KeAcquireSpinLockAtDpcLevel(kspin_lock *lock)
{
 while (atomic_cmpset_acq_int((volatile u_int *)lock, 0, 1) == 0)
                    ;
}
