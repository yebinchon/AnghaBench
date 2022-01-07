
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_info {int dummy; } ;
struct libusb20_device {int file; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_INVALID_PARAM ;
 int USB_GET_DEVICEINFO ;
 scalar_t__ ioctl (int ,int ,struct usb_device_info*) ;

__attribute__((used)) static int
ugen20_dev_get_info(struct libusb20_device *pdev,
    struct usb_device_info *pinfo)
{
 if (ioctl(pdev->file, IOUSB(USB_GET_DEVICEINFO), pinfo)) {
  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 return (0);
}
