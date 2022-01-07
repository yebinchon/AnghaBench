
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int USB_GET_POWER_USAGE ;
 scalar_t__ ioctl (int ,int ,int*) ;

__attribute__((used)) static int
ugen20_get_power_usage(struct libusb20_device *pdev, uint16_t *power_usage)
{
 int temp;

 if (ioctl(pdev->file_ctrl, IOUSB(USB_GET_POWER_USAGE), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 *power_usage = temp;
 return (0);
}
