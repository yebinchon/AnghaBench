
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
struct TYPE_4__ {int claimed_interfaces; int dev_poll; int ctx; } ;
typedef TYPE_1__ libusb_device ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NOT_FOUND ;
 int LIBUSB_ERROR_OTHER ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int libusb10_add_pollfd (int ,int *,struct libusb20_device*,int ,int) ;
 int libusb10_cancel_all_transfer (TYPE_1__*) ;
 int libusb10_remove_pollfd (int ,int *) ;
 int libusb20_dev_get_fd (struct libusb20_device*) ;
 int libusb20_dev_set_alt_index (struct libusb20_device*,int,int) ;
 TYPE_1__* libusb_get_device (struct libusb20_device*) ;

int
libusb_set_interface_alt_setting(struct libusb20_device *pdev,
    int interface_number, int alternate_setting)
{
 libusb_device *dev;
 int err = 0;

 dev = libusb_get_device(pdev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (interface_number < 0 || interface_number > 31)
  return (LIBUSB_ERROR_INVALID_PARAM);

 CTX_LOCK(dev->ctx);
 if (!(dev->claimed_interfaces & (1 << interface_number)))
  err = LIBUSB_ERROR_NOT_FOUND;
 CTX_UNLOCK(dev->ctx);

 if (err)
  return (err);

 libusb10_cancel_all_transfer(dev);

 libusb10_remove_pollfd(dev->ctx, &dev->dev_poll);

 err = libusb20_dev_set_alt_index(pdev,
     interface_number, alternate_setting);

 libusb10_add_pollfd(dev->ctx, &dev->dev_poll,
     pdev, libusb20_dev_get_fd(pdev),
     POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);

 return (err ? LIBUSB_ERROR_OTHER : 0);
}
