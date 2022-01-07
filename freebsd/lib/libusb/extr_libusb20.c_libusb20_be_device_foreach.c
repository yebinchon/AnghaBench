
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;
struct libusb20_backend {int usb_devs; } ;


 struct libusb20_device* TAILQ_FIRST (int *) ;
 struct libusb20_device* TAILQ_NEXT (struct libusb20_device*,int ) ;
 int dev_entry ;

struct libusb20_device *
libusb20_be_device_foreach(struct libusb20_backend *pbe, struct libusb20_device *pdev)
{
 if (pbe == ((void*)0)) {
  pdev = ((void*)0);
 } else if (pdev == ((void*)0)) {
  pdev = TAILQ_FIRST(&(pbe->usb_devs));
 } else {
  pdev = TAILQ_NEXT(pdev, dev_entry);
 }
 return (pdev);
}
