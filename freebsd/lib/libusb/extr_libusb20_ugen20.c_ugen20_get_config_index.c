
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int USB_GET_CONFIG ;
 scalar_t__ ioctl (int ,int ,int*) ;

__attribute__((used)) static int
ugen20_get_config_index(struct libusb20_device *pdev, uint8_t *pindex)
{
 int temp;

 if (ioctl(pdev->file_ctrl, IOUSB(USB_GET_CONFIG), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 *pindex = temp;

 return (0);
}
