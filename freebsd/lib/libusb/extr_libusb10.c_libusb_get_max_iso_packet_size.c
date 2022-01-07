
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int os_priv; } ;
typedef TYPE_1__ libusb_device ;




 int libusb20_dev_get_speed (int ) ;
 int libusb_get_max_packet_size (TYPE_1__*,int ) ;

int
libusb_get_max_iso_packet_size(libusb_device *dev, uint8_t endpoint)
{
 int multiplier;
 int ret;

 ret = libusb_get_max_packet_size(dev, endpoint);

 switch (libusb20_dev_get_speed(dev->os_priv)) {
 case 128:
 case 129:
  break;
 default:
  if (ret > -1) {
   multiplier = (1 + ((ret >> 11) & 3));
   if (multiplier > 3)
    multiplier = 3;
   ret = (ret & 0x7FF) * multiplier;
  }
  break;
 }
 return (ret);
}
