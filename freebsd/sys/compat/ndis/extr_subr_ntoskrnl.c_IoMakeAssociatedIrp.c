
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_4__* irp_master; } ;
struct TYPE_8__ {int irp_thread; } ;
struct TYPE_9__ {TYPE_1__ irp_overlay; } ;
struct TYPE_11__ {TYPE_3__ irp_assoc; TYPE_2__ irp_tail; int irp_flags; } ;
typedef TYPE_4__ irp ;


 int FALSE ;
 int IRP_ASSOCIATED_IRP ;
 TYPE_4__* IoAllocateIrp (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntoskrnl_dispatchlock ;

__attribute__((used)) static irp *
IoMakeAssociatedIrp(irp *ip, uint8_t stsize)
{
 irp *associrp;

 associrp = IoAllocateIrp(stsize, FALSE);
 if (associrp == ((void*)0))
  return (((void*)0));

 mtx_lock(&ntoskrnl_dispatchlock);
 associrp->irp_flags |= IRP_ASSOCIATED_IRP;
 associrp->irp_tail.irp_overlay.irp_thread =
     ip->irp_tail.irp_overlay.irp_thread;
 associrp->irp_assoc.irp_master = ip;
 mtx_unlock(&ntoskrnl_dispatchlock);

 return (associrp);
}
