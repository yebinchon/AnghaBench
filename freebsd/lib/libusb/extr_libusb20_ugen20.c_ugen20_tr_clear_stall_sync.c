
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct usb_fs_clear_stall_sync {int ep_index; } ;
struct libusb20_transfer {TYPE_1__* pdev; int trIndex; } ;
struct TYPE_2__ {int file; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_INVALID_PARAM ;
 int USB_FS_CLEAR_STALL_SYNC ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_clear_stall_sync*) ;
 int memset (struct usb_fs_clear_stall_sync*,int ,int) ;

__attribute__((used)) static int
ugen20_tr_clear_stall_sync(struct libusb20_transfer *xfer)
{
 struct usb_fs_clear_stall_sync temp;

 memset(&temp, 0, sizeof(temp));



 temp.ep_index = xfer->trIndex;

 if (ioctl(xfer->pdev->file, IOUSB(USB_FS_CLEAR_STALL_SYNC), &temp)) {
  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 return (0);
}
