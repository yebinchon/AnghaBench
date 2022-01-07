
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct libusb20_device {int dummy; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ libusb_transfer ;


 int LIBUSB20_MAX_FRAME_PRE_SCALE ;



__attribute__((used)) static uint32_t
libusb10_get_maxframe(struct libusb20_device *pdev, libusb_transfer *xfer)
{
 uint32_t ret;

 switch (xfer->type) {
 case 128:
  ret = 60 | LIBUSB20_MAX_FRAME_PRE_SCALE;
  break;
 case 129:
  ret = 2;
  break;
 default:
  ret = 1;
  break;
 }
 return (ret);
}
