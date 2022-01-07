
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int USB_DEVICEENUMERATE ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int ugen20_tr_release (struct libusb20_device*) ;
 int ugen20_tr_renew (struct libusb20_device*) ;

__attribute__((used)) static int
ugen20_reset_device(struct libusb20_device *pdev)
{
 int temp = 0;


 ugen20_tr_release(pdev);

 if (ioctl(pdev->file_ctrl, IOUSB(USB_DEVICEENUMERATE), &temp)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 return (ugen20_tr_renew(pdev));
}
