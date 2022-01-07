
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int beMethods; } ;
struct libusb20_backend {int usb_devs; int methods; } ;


 int TAILQ_INSERT_TAIL (int *,struct libusb20_device*,int ) ;
 int dev_entry ;

void
libusb20_be_enqueue_device(struct libusb20_backend *pbe, struct libusb20_device *pdev)
{
 pdev->beMethods = pbe->methods;
 TAILQ_INSERT_TAIL(&(pbe->usb_devs), pdev, dev_entry);
}
