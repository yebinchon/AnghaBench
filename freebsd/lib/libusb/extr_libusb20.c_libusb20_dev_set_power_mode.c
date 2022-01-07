
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* set_power_mode ) (struct libusb20_device*,int ) ;} ;


 int stub1 (struct libusb20_device*,int ) ;

int
libusb20_dev_set_power_mode(struct libusb20_device *pdev, uint8_t power_mode)
{
 int error;

 error = pdev->methods->set_power_mode(pdev, power_mode);
 return (error);
}
