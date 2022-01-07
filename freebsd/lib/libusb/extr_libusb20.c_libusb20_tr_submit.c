
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libusb20_transfer {int is_pending; TYPE_2__* pdev; scalar_t__ is_restart; scalar_t__ is_cancel; int is_opened; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int (* tr_submit ) (struct libusb20_transfer*) ;} ;


 int stub1 (struct libusb20_transfer*) ;

void
libusb20_tr_submit(struct libusb20_transfer *xfer)
{
 if (!xfer->is_opened) {

  return;
 }
 if (xfer->is_pending) {

  return;
 }
 xfer->is_pending = 1;
 xfer->is_cancel = 0;
 xfer->is_restart = 0;

 xfer->pdev->methods->tr_submit(xfer);
 return;
}
