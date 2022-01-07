
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ plugtime; } ;
struct libusb20_device {TYPE_1__ session_data; int file_ctrl; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_NO_DEVICE ;
 int USB_GET_PLUGTIME ;
 scalar_t__ ioctl (int ,int ,scalar_t__*) ;

__attribute__((used)) static int
ugen20_check_connected(struct libusb20_device *pdev)
{
 uint32_t plugtime;
 int error = 0;

 if (ioctl(pdev->file_ctrl, IOUSB(USB_GET_PLUGTIME), &plugtime)) {
  error = LIBUSB20_ERROR_NO_DEVICE;
  goto done;
 }

 if (pdev->session_data.plugtime != plugtime) {
  error = LIBUSB20_ERROR_NO_DEVICE;
  goto done;
 }
done:
 return (error);
}
