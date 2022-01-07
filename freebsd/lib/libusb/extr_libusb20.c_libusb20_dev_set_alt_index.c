
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* set_alt_index ) (struct libusb20_device*,int ,int ) ;} ;


 int stub1 (struct libusb20_device*,int ,int ) ;

int
libusb20_dev_set_alt_index(struct libusb20_device *pdev, uint8_t ifaceIndex, uint8_t altIndex)
{
 int error;

 error = pdev->methods->set_alt_index(pdev, ifaceIndex, altIndex);
 return (error);
}
