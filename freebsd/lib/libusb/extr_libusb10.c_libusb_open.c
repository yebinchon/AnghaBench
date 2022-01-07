
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
typedef struct libusb20_device libusb_device_handle ;
struct TYPE_6__ {int dev_poll; struct libusb20_device* os_priv; int * ctx; } ;
typedef TYPE_1__ libusb_device ;
typedef int libusb_context ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_MEM ;
 int LIBUSB_NUM_SW_ENDPOINTS ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int libusb10_add_pollfd (int *,int *,struct libusb20_device*,int ,int) ;
 int libusb10_wakeup_event_loop (int *) ;
 int libusb20_dev_get_fd (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int ) ;
 TYPE_1__* libusb_ref_device (TYPE_1__*) ;
 int libusb_unref_device (TYPE_1__*) ;

int
libusb_open(libusb_device *dev, libusb_device_handle **devh)
{
 libusb_context *ctx = dev->ctx;
 struct libusb20_device *pdev = dev->os_priv;
 int err;

 if (devh == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);


 *devh = ((void*)0);

 dev = libusb_ref_device(dev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 err = libusb20_dev_open(pdev, LIBUSB_NUM_SW_ENDPOINTS);
 if (err) {
  libusb_unref_device(dev);
  return (LIBUSB_ERROR_NO_MEM);
 }
 libusb10_add_pollfd(ctx, &dev->dev_poll, pdev, libusb20_dev_get_fd(pdev), POLLIN |
     POLLOUT | POLLRDNORM | POLLWRNORM);


 libusb10_wakeup_event_loop(ctx);

 *devh = pdev;

 return (0);
}
