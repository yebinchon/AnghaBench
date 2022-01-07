
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int os_priv; } ;
typedef TYPE_1__ libusb_device ;
typedef enum libusb_speed { ____Placeholder_libusb_speed } libusb_speed ;






 int LIBUSB_SPEED_FULL ;
 int LIBUSB_SPEED_HIGH ;
 int LIBUSB_SPEED_LOW ;
 int LIBUSB_SPEED_SUPER ;
 int LIBUSB_SPEED_UNKNOWN ;
 int libusb20_dev_get_speed (int ) ;

enum libusb_speed
libusb_get_device_speed(libusb_device *dev)
{
 if (dev == ((void*)0))
  return (LIBUSB_SPEED_UNKNOWN);

 switch (libusb20_dev_get_speed(dev->os_priv)) {
 case 129:
  return (LIBUSB_SPEED_LOW);
 case 131:
  return (LIBUSB_SPEED_FULL);
 case 130:
  return (LIBUSB_SPEED_HIGH);
 case 128:
  return (LIBUSB_SPEED_SUPER);
 default:
  break;
 }
 return (LIBUSB_SPEED_UNKNOWN);
}
