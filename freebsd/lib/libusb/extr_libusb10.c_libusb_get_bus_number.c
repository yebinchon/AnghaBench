
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int os_priv; } ;
typedef TYPE_1__ libusb_device ;


 int libusb20_dev_get_bus_number (int ) ;

uint8_t
libusb_get_bus_number(libusb_device *dev)
{
 if (dev == ((void*)0))
  return (0);
 return (libusb20_dev_get_bus_number(dev->os_priv));
}
