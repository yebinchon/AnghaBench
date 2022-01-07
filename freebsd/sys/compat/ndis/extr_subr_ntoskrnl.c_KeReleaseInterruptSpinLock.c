
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int kinterrupt ;


 int KeReleaseSpinLock (int *,int ) ;
 int ntoskrnl_intlock ;

void
KeReleaseInterruptSpinLock(kinterrupt *iobj, uint8_t irql)
{
 KeReleaseSpinLock(&ntoskrnl_intlock, irql);
}
