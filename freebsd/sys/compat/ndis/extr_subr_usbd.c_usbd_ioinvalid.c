
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct io_stack_location {int isl_minor; int isl_major; } ;
struct TYPE_8__ {scalar_t__ isb_info; int isb_status; } ;
struct TYPE_9__ {TYPE_1__ irp_iostat; } ;
typedef TYPE_2__ irp ;
typedef int int32_t ;
typedef int device_t ;
struct TYPE_10__ {int do_devext; } ;
typedef TYPE_3__ device_object ;


 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_2__*,int ) ;
 struct io_stack_location* IoGetCurrentIrpStackLocation (TYPE_2__*) ;
 int STATUS_FAILURE ;
 int device_printf (int ,char*,int ,int ) ;

__attribute__((used)) static int32_t
usbd_ioinvalid(device_object *dobj, irp *ip)
{
 device_t dev = dobj->do_devext;
 struct io_stack_location *irp_sl;

 irp_sl = IoGetCurrentIrpStackLocation(ip);
 device_printf(dev, "invalid I/O dispatch %d:%d\n", irp_sl->isl_major,
     irp_sl->isl_minor);

 ip->irp_iostat.isb_status = STATUS_FAILURE;
 ip->irp_iostat.isb_info = 0;

 IoCompleteRequest(ip, IO_NO_INCREMENT);

 return (STATUS_FAILURE);
}
