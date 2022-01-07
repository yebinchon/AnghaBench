
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int device_address; } ;



uint8_t
libusb20_dev_get_address(struct libusb20_device *pdev)
{
 return (pdev->device_address);
}
