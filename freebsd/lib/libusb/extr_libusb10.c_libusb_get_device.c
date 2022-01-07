
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {scalar_t__ privLuData; } ;
typedef int libusb_device ;



libusb_device *
libusb_get_device(struct libusb20_device *pdev)
{
 if (pdev == ((void*)0))
  return (((void*)0));
 return ((libusb_device *)pdev->privLuData);
}
