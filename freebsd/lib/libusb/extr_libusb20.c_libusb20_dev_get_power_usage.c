
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* get_power_usage ) (struct libusb20_device*,scalar_t__*) ;} ;


 int stub1 (struct libusb20_device*,scalar_t__*) ;

uint16_t
libusb20_dev_get_power_usage(struct libusb20_device *pdev)
{
 int error;
 uint16_t power_usage;

 error = pdev->methods->get_power_usage(pdev, &power_usage);
 if (error)
  power_usage = 0;
 return (power_usage);
}
