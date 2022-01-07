
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union usbd_urb {int dummy; } usbd_urb ;
struct TYPE_3__ {union usbd_urb* isl_arg1; } ;
struct TYPE_4__ {TYPE_1__ isl_others; } ;
struct io_stack_location {TYPE_2__ isl_parameters; } ;
typedef int irp ;


 struct io_stack_location* IoGetCurrentIrpStackLocation (int *) ;

__attribute__((used)) static union usbd_urb *
usbd_geturb(irp *ip)
{
 struct io_stack_location *irp_sl;

 irp_sl = IoGetCurrentIrpStackLocation(ip);

 return (irp_sl->isl_parameters.isl_others.isl_arg1);
}
