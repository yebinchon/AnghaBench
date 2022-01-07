
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int irp_cancelirql; int irp_cancel; } ;
typedef TYPE_1__ irp ;
typedef int * cancel_func ;
struct TYPE_9__ {int isl_devobj; } ;


 int FALSE ;
 int IoAcquireCancelSpinLock (int *) ;
 TYPE_5__* IoGetCurrentIrpStackLocation (TYPE_1__*) ;
 int IoReleaseCancelSpinLock (int ) ;
 int * IoSetCancelRoutine (TYPE_1__*,int *) ;
 int IoSetCancelValue (TYPE_1__*,int ) ;
 int MSCALL2 (int *,int ,TYPE_1__*) ;
 int TRUE ;

uint8_t
IoCancelIrp(irp *ip)
{
 cancel_func cfunc;
 uint8_t cancelirql;

 IoAcquireCancelSpinLock(&cancelirql);
 cfunc = IoSetCancelRoutine(ip, ((void*)0));
 ip->irp_cancel = TRUE;
 if (cfunc == ((void*)0)) {
  IoReleaseCancelSpinLock(cancelirql);
  return (FALSE);
 }
 ip->irp_cancelirql = cancelirql;
 MSCALL2(cfunc, IoGetCurrentIrpStackLocation(ip)->isl_devobj, ip);
 return (uint8_t)IoSetCancelValue(ip, TRUE);
}
