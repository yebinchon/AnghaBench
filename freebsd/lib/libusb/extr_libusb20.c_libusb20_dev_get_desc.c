
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {char const* usb_desc; } ;



const char *
libusb20_dev_get_desc(struct libusb20_device *pdev)
{
 return (pdev->usb_desc);
}
