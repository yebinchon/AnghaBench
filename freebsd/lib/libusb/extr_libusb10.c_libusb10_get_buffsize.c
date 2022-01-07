
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ libusb_transfer ;







 int libusb20_dev_get_speed (struct libusb20_device*) ;

__attribute__((used)) static int
libusb10_get_buffsize(struct libusb20_device *pdev, libusb_transfer *xfer)
{
 int ret;
 int usb_speed;

 usb_speed = libusb20_dev_get_speed(pdev);

 switch (xfer->type) {
 case 128:
  ret = 0;
  break;
 case 129:
  ret = 1024;
  break;
 default:
  switch (usb_speed) {
  case 131:
   ret = 256;
   break;
  case 132:
   ret = 4096;
   break;
  case 130:
   ret = 65536;
   break;
  default:
   ret = 16384;
   break;
  }
  break;
 }
 return (ret);
}
