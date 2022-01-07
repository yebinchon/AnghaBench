
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;
struct libusb20_backend {int usb_devs; } ;


 int TAILQ_REMOVE (int *,struct libusb20_device*,int ) ;
 int dev_entry ;

void
libusb20_be_dequeue_device(struct libusb20_backend *pbe,
    struct libusb20_device *pdev)
{
 TAILQ_REMOVE(&(pbe->usb_devs), pdev, dev_entry);
}
