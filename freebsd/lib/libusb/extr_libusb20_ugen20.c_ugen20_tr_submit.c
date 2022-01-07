
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct usb_fs_start {scalar_t__ ep_index; } ;
struct usb_fs_endpoint {int timeout; int flags; int nFrames; } ;
struct libusb20_transfer {int flags; int timeout; TYPE_1__* pdev; scalar_t__ trIndex; int nFrames; } ;
struct TYPE_2__ {int file; struct usb_fs_endpoint* privBeData; } ;


 int IOUSB (int ) ;
 int LIBUSB20_TRANSFER_DO_CLEAR_STALL ;
 int LIBUSB20_TRANSFER_FORCE_SHORT ;
 int LIBUSB20_TRANSFER_MULTI_SHORT_NOT_OK ;
 int LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK ;
 int USB_FS_FLAG_CLEAR_STALL ;
 int USB_FS_FLAG_FORCE_SHORT ;
 int USB_FS_FLAG_MULTI_SHORT_OK ;
 int USB_FS_FLAG_SINGLE_SHORT_OK ;
 int USB_FS_START ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_start*) ;
 int memset (struct usb_fs_start*,int ,int) ;

__attribute__((used)) static void
ugen20_tr_submit(struct libusb20_transfer *xfer)
{
 struct usb_fs_start temp;
 struct usb_fs_endpoint *fsep;

 memset(&temp, 0, sizeof(temp));

 fsep = xfer->pdev->privBeData;
 fsep += xfer->trIndex;

 fsep->nFrames = xfer->nFrames;
 fsep->flags = 0;
 if (!(xfer->flags & LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK)) {
  fsep->flags |= USB_FS_FLAG_SINGLE_SHORT_OK;
 }
 if (!(xfer->flags & LIBUSB20_TRANSFER_MULTI_SHORT_NOT_OK)) {
  fsep->flags |= USB_FS_FLAG_MULTI_SHORT_OK;
 }
 if (xfer->flags & LIBUSB20_TRANSFER_FORCE_SHORT) {
  fsep->flags |= USB_FS_FLAG_FORCE_SHORT;
 }
 if (xfer->flags & LIBUSB20_TRANSFER_DO_CLEAR_STALL) {
  fsep->flags |= USB_FS_FLAG_CLEAR_STALL;
 }

 if (xfer->timeout > 65535)
  fsep->timeout = 65535;
 else
  fsep->timeout = xfer->timeout;

 temp.ep_index = xfer->trIndex;

 if (ioctl(xfer->pdev->file, IOUSB(USB_FS_START), &temp)) {

 }
 return;
}
