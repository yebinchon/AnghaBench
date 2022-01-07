
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int kspin_lock ;


 int atomic_store_rel_int (int volatile*,int ) ;

void
KeReleaseSpinLockFromDpcLevel(kspin_lock *lock)
{
 atomic_store_rel_int((volatile u_int *)lock, 0);
}
