
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
struct TYPE_4__ {int dev_poll; int ctx; } ;
typedef TYPE_1__ libusb_device ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_OTHER ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int libusb10_add_pollfd (int ,int *,struct libusb20_device*,int ,int) ;
 int libusb10_cancel_all_transfer (TYPE_1__*) ;
 int libusb10_remove_pollfd (int ,int *) ;
 int libusb20_dev_get_fd (struct libusb20_device*) ;
 int libusb20_dev_reset (struct libusb20_device*) ;
 TYPE_1__* libusb_get_device (struct libusb20_device*) ;

int
libusb_reset_device(struct libusb20_device *pdev)
{
 libusb_device *dev;
 int err;

 dev = libusb_get_device(pdev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 libusb10_cancel_all_transfer(dev);

 libusb10_remove_pollfd(dev->ctx, &dev->dev_poll);

 err = libusb20_dev_reset(pdev);

 libusb10_add_pollfd(dev->ctx, &dev->dev_poll,
     pdev, libusb20_dev_get_fd(pdev),
     POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);

 return (err ? LIBUSB_ERROR_OTHER : 0);
}
