
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* reset_device ) (struct libusb20_device*) ;} ;


 int stub1 (struct libusb20_device*) ;

int
libusb20_dev_reset(struct libusb20_device *pdev)
{
 int error;

 error = pdev->methods->reset_device(pdev);
 return (error);
}
