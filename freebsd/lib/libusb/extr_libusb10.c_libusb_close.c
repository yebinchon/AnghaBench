
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device {int dev_poll; int * ctx; } ;
struct libusb20_device {int dummy; } ;
typedef int libusb_context ;


 int libusb10_remove_pollfd (int *,int *) ;
 int libusb10_wakeup_event_loop (int *) ;
 int libusb20_dev_close (struct libusb20_device*) ;
 struct libusb_device* libusb_get_device (struct libusb20_device*) ;
 int libusb_unref_device (struct libusb_device*) ;

void
libusb_close(struct libusb20_device *pdev)
{
 libusb_context *ctx;
 struct libusb_device *dev;

 if (pdev == ((void*)0))
  return;

 dev = libusb_get_device(pdev);
 ctx = dev->ctx;

 libusb10_remove_pollfd(ctx, &dev->dev_poll);

 libusb20_dev_close(pdev);


 libusb_unref_device(dev);


 libusb10_wakeup_event_loop(ctx);
}
