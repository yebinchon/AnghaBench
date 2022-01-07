
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int kspin_lock ;
struct TYPE_4__ {int ki_list; int * ki_lock; int ki_lock_priv; void* ki_svcctx; void* ki_svcfunc; } ;
typedef TYPE_1__ kinterrupt ;


 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int InsertHeadList (int *,int *) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeInitializeSpinLock (int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int ntoskrnl_intlist ;
 int ntoskrnl_intlock ;

uint32_t
IoConnectInterrupt(kinterrupt **iobj, void *svcfunc, void *svcctx,
 kspin_lock *lock, uint32_t vector, uint8_t irql, uint8_t syncirql,
 uint8_t imode, uint8_t shared, uint32_t affinity, uint8_t savefloat)
{
 uint8_t curirql;

 *iobj = ExAllocatePoolWithTag(NonPagedPool, sizeof(kinterrupt), 0);
 if (*iobj == ((void*)0))
  return (STATUS_INSUFFICIENT_RESOURCES);

 (*iobj)->ki_svcfunc = svcfunc;
 (*iobj)->ki_svcctx = svcctx;

 if (lock == ((void*)0)) {
  KeInitializeSpinLock(&(*iobj)->ki_lock_priv);
  (*iobj)->ki_lock = &(*iobj)->ki_lock_priv;
 } else
  (*iobj)->ki_lock = lock;

 KeAcquireSpinLock(&ntoskrnl_intlock, &curirql);
 InsertHeadList((&ntoskrnl_intlist), (&(*iobj)->ki_list));
 KeReleaseSpinLock(&ntoskrnl_intlock, curirql);

 return (STATUS_SUCCESS);
}
