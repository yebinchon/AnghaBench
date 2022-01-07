
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libusb20_transfer {int is_cancel; TYPE_2__* pdev; int is_pending; int is_opened; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int (* tr_cancel_async ) (struct libusb20_transfer*) ;} ;


 int stub1 (struct libusb20_transfer*) ;

void
libusb20_tr_stop(struct libusb20_transfer *xfer)
{
 if (!xfer->is_opened) {

  return;
 }
 if (!xfer->is_pending) {

  return;
 }
 if (xfer->is_cancel) {

  return;
 }
 xfer->is_cancel = 1;

 xfer->pdev->methods->tr_cancel_async(xfer);
 return;
}
