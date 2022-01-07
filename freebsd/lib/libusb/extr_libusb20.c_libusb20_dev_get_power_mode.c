
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* get_power_mode ) (struct libusb20_device*,int *) ;} ;


 int LIBUSB20_POWER_ON ;
 int stub1 (struct libusb20_device*,int *) ;

uint8_t
libusb20_dev_get_power_mode(struct libusb20_device *pdev)
{
 int error;
 uint8_t power_mode;

 error = pdev->methods->get_power_mode(pdev, &power_mode);
 if (error)
  power_mode = LIBUSB20_POWER_ON;
 return (power_mode);
}
