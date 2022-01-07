
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_INVALID_PARAM ;
 int LIBUSB20_ERROR_OTHER ;





 int USB_POWER_MODE_OFF ;
 int USB_POWER_MODE_ON ;
 int USB_POWER_MODE_RESUME ;
 int USB_POWER_MODE_SAVE ;
 int USB_POWER_MODE_SUSPEND ;
 int USB_SET_POWER_MODE ;
 scalar_t__ ioctl (int ,int ,int*) ;

__attribute__((used)) static int
ugen20_set_power_mode(struct libusb20_device *pdev, uint8_t power_mode)
{
 int temp;

 switch (power_mode) {
 case 132:
  temp = USB_POWER_MODE_OFF;
  break;
 case 131:
  temp = USB_POWER_MODE_ON;
  break;
 case 129:
  temp = USB_POWER_MODE_SAVE;
  break;
 case 128:
  temp = USB_POWER_MODE_SUSPEND;
  break;
 case 130:
  temp = USB_POWER_MODE_RESUME;
  break;
 default:
  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 if (ioctl(pdev->file_ctrl, IOUSB(USB_SET_POWER_MODE), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 return (0);
}
