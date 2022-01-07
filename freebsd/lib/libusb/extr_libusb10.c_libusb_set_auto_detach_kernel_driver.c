
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int auto_detach; } ;
typedef TYPE_1__ libusb_device_handle ;



int
libusb_set_auto_detach_kernel_driver(libusb_device_handle *dev, int enable)
{
 dev->auto_detach = (enable ? 1 : 0);
 return (0);
}
