
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int USB_SET_CONFIG ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int ugen20_tr_release (struct libusb20_device*) ;
 int ugen20_tr_renew (struct libusb20_device*) ;

__attribute__((used)) static int
ugen20_set_config_index(struct libusb20_device *pdev, uint8_t cfg_index)
{
 int temp = cfg_index;


 ugen20_tr_release(pdev);

 if (ioctl(pdev->file_ctrl, IOUSB(USB_SET_CONFIG), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 return (ugen20_tr_renew(pdev));
}
