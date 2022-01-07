
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int kspin_lock ;


 int KeLowerIrql (int ) ;
 int KeReleaseSpinLockFromDpcLevel (int *) ;

void
KfReleaseSpinLock(kspin_lock *lock, uint8_t newirql)
{
 KeReleaseSpinLockFromDpcLevel(lock);
 KeLowerIrql(newirql);
}
