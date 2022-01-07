
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct usb_fs_stop {int ep_index; } ;
struct libusb20_transfer {TYPE_1__* pdev; int trIndex; } ;
struct TYPE_2__ {int file; } ;


 int IOUSB (int ) ;
 int USB_FS_STOP ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_stop*) ;
 int memset (struct usb_fs_stop*,int ,int) ;

__attribute__((used)) static void
ugen20_tr_cancel_async(struct libusb20_transfer *xfer)
{
 struct usb_fs_stop temp;

 memset(&temp, 0, sizeof(temp));

 temp.ep_index = xfer->trIndex;

 if (ioctl(xfer->pdev->file, IOUSB(USB_FS_STOP), &temp)) {

 }
 return;
}
