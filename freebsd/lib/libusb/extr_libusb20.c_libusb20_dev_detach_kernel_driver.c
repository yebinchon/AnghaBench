
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* detach_kernel_driver ) (struct libusb20_device*,int ) ;} ;


 int stub1 (struct libusb20_device*,int ) ;

int
libusb20_dev_detach_kernel_driver(struct libusb20_device *pdev, uint8_t ifaceIndex)
{
 int error;

 error = pdev->methods->detach_kernel_driver(pdev, ifaceIndex);
 return (error);
}
