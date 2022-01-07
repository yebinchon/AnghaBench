
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct libusb20_transfer {int is_opened; } ;
struct libusb20_device {scalar_t__ nTransfer; scalar_t__ auto_detach; scalar_t__ claimed_interface; scalar_t__ is_opened; int * methods; TYPE_1__* beMethods; struct libusb20_transfer* pTransfer; } ;
struct TYPE_2__ {int (* close_device ) (struct libusb20_device*) ;} ;


 int LIBUSB20_ERROR_OTHER ;
 int free (struct libusb20_transfer*) ;
 int libusb20_dummy_methods ;
 int libusb20_tr_close (struct libusb20_transfer*) ;
 int libusb20_tr_drain (struct libusb20_transfer*) ;
 int stub1 (struct libusb20_device*) ;

int
libusb20_dev_close(struct libusb20_device *pdev)
{
 struct libusb20_transfer *xfer;
 uint16_t x;
 int error = 0;

 if (!pdev->is_opened) {
  return (LIBUSB20_ERROR_OTHER);
 }
 for (x = 0; x != pdev->nTransfer; x++) {
  xfer = pdev->pTransfer + x;

  if (!xfer->is_opened) {

   continue;
  }

  libusb20_tr_drain(xfer);

  libusb20_tr_close(xfer);
 }

 if (pdev->pTransfer != ((void*)0)) {
  free(pdev->pTransfer);
  pdev->pTransfer = ((void*)0);
 }
 error = pdev->beMethods->close_device(pdev);

 pdev->methods = &libusb20_dummy_methods;

 pdev->is_opened = 0;





 pdev->claimed_interface = 0;





 pdev->auto_detach = 0;

 return (error);
}
