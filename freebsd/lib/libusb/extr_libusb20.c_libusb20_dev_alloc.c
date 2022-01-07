
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int file; int file_ctrl; int * methods; } ;


 int libusb20_dummy_methods ;
 struct libusb20_device* malloc (int) ;
 int memset (struct libusb20_device*,int ,int) ;

struct libusb20_device *
libusb20_dev_alloc(void)
{
 struct libusb20_device *pdev;

 pdev = malloc(sizeof(*pdev));
 if (pdev == ((void*)0)) {
  return (((void*)0));
 }
 memset(pdev, 0, sizeof(*pdev));

 pdev->file = -1;
 pdev->file_ctrl = -1;
 pdev->methods = &libusb20_dummy_methods;
 return (pdev);
}
