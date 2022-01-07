
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {scalar_t__ is_opened; } ;


 int free (struct libusb20_device*) ;
 scalar_t__ libusb20_dev_close (struct libusb20_device*) ;

void
libusb20_dev_free(struct libusb20_device *pdev)
{
 if (pdev == ((void*)0)) {

  return;
 }
 if (pdev->is_opened) {
  if (libusb20_dev_close(pdev)) {

  }
 }
 free(pdev);
 return;
}
