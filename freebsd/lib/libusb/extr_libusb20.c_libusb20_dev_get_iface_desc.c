
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct libusb20_device {TYPE_1__* beMethods; } ;
struct TYPE_2__ {int (* dev_get_iface_desc ) (struct libusb20_device*,scalar_t__,char*,scalar_t__) ;} ;


 int LIBUSB20_ERROR_INVALID_PARAM ;
 int stub1 (struct libusb20_device*,scalar_t__,char*,scalar_t__) ;

int
libusb20_dev_get_iface_desc(struct libusb20_device *pdev,
    uint8_t iface_index, char *buf, uint8_t len)
{
 if ((buf == ((void*)0)) || (len == 0))
  return (LIBUSB20_ERROR_INVALID_PARAM);

 buf[0] = 0;

 return (pdev->beMethods->dev_get_iface_desc(
     pdev, iface_index, buf, len));
}
