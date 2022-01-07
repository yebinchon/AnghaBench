
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int LIBUSB20_POWER_OFF ;
 int LIBUSB20_POWER_ON ;
 int LIBUSB20_POWER_RESUME ;
 int LIBUSB20_POWER_SAVE ;
 int LIBUSB20_POWER_SUSPEND ;
 int USB_GET_POWER_MODE ;





 scalar_t__ ioctl (int ,int ,int*) ;

__attribute__((used)) static int
ugen20_get_power_mode(struct libusb20_device *pdev, uint8_t *power_mode)
{
 int temp;

 if (ioctl(pdev->file_ctrl, IOUSB(USB_GET_POWER_MODE), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 switch (temp) {
 case 132:
  temp = LIBUSB20_POWER_OFF;
  break;
 case 131:
  temp = LIBUSB20_POWER_ON;
  break;
 case 129:
  temp = LIBUSB20_POWER_SAVE;
  break;
 case 128:
  temp = LIBUSB20_POWER_SUSPEND;
  break;
 case 130:
  temp = LIBUSB20_POWER_RESUME;
  break;
 default:
  temp = LIBUSB20_POWER_ON;
  break;
 }
 *power_mode = temp;
 return (0);
}
