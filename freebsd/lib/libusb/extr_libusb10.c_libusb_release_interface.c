
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct libusb20_device {scalar_t__ auto_detach; } ;
struct TYPE_3__ {int claimed_interfaces; int ctx; } ;
typedef TYPE_1__ libusb_device ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NOT_FOUND ;
 int libusb_attach_kernel_driver (struct libusb20_device*,int) ;
 TYPE_1__* libusb_get_device (struct libusb20_device*) ;

int
libusb_release_interface(struct libusb20_device *pdev, int interface_number)
{
 libusb_device *dev;
 int err = 0;

 dev = libusb_get_device(pdev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (interface_number < 0 || interface_number > 31)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (pdev->auto_detach != 0) {
  err = libusb_attach_kernel_driver(pdev, interface_number);
  if (err != 0)
   goto done;
 }

 CTX_LOCK(dev->ctx);
 if (!(dev->claimed_interfaces & (1 << interface_number)))
  err = LIBUSB_ERROR_NOT_FOUND;
 else
  dev->claimed_interfaces &= ~(1 << interface_number);
 CTX_UNLOCK(dev->ctx);
done:
 return (err);
}
