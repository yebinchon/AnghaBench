
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KeAcquireSpinLock (int *,int *) ;
 int ntoskrnl_cancellock ;

void
IoAcquireCancelSpinLock(uint8_t *irql)
{
 KeAcquireSpinLock(&ntoskrnl_cancellock, irql);
}
