
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libusb20_transfer {TYPE_2__* pdev; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int (* tr_clear_stall_sync ) (struct libusb20_transfer*) ;} ;


 int stub1 (struct libusb20_transfer*) ;

void
libusb20_tr_clear_stall_sync(struct libusb20_transfer *xfer)
{
 xfer->pdev->methods->tr_clear_stall_sync(xfer);
 return;
}
