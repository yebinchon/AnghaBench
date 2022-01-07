
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fs_endpoint {scalar_t__ status; scalar_t__ isoc_time_complete; scalar_t__ aFrames; } ;
struct usb_fs_complete {int ep_index; } ;
struct libusb20_transfer {int status; scalar_t__ timeComplete; scalar_t__ aFrames; } ;
struct libusb20_device {struct libusb20_transfer* pTransfer; struct usb_fs_endpoint* privBeData; int file; } ;


 scalar_t__ EBUSY ;
 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int LIBUSB20_TRANSFER_CANCELLED ;
 int LIBUSB20_TRANSFER_COMPLETED ;
 int LIBUSB20_TRANSFER_ERROR ;
 int LIBUSB20_TRANSFER_STALL ;
 int LIBUSB20_TRANSFER_TIMED_OUT ;
 scalar_t__ USB_ERR_CANCELLED ;
 scalar_t__ USB_ERR_STALLED ;
 scalar_t__ USB_ERR_TIMEOUT ;
 int USB_FS_COMPLETE ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_complete*) ;
 int libusb20_tr_callback_wrapper (struct libusb20_transfer*) ;

__attribute__((used)) static int
ugen20_process(struct libusb20_device *pdev)
{
 struct usb_fs_complete temp;
 struct usb_fs_endpoint *fsep;
 struct libusb20_transfer *xfer;

 while (1) {

   if (ioctl(pdev->file, IOUSB(USB_FS_COMPLETE), &temp)) {
   if (errno == EBUSY) {
    break;
   } else {

    return (LIBUSB20_ERROR_OTHER);
   }
  }
  fsep = pdev->privBeData;
  xfer = pdev->pTransfer;
  fsep += temp.ep_index;
  xfer += temp.ep_index;



  if (fsep->status == 0) {
   xfer->aFrames = fsep->aFrames;
   xfer->timeComplete = fsep->isoc_time_complete;
   xfer->status = LIBUSB20_TRANSFER_COMPLETED;
  } else if (fsep->status == USB_ERR_CANCELLED) {
   xfer->aFrames = 0;
   xfer->timeComplete = 0;
   xfer->status = LIBUSB20_TRANSFER_CANCELLED;
  } else if (fsep->status == USB_ERR_STALLED) {
   xfer->aFrames = 0;
   xfer->timeComplete = 0;
   xfer->status = LIBUSB20_TRANSFER_STALL;
  } else if (fsep->status == USB_ERR_TIMEOUT) {
   xfer->aFrames = 0;
   xfer->timeComplete = 0;
   xfer->status = LIBUSB20_TRANSFER_TIMED_OUT;
  } else {
   xfer->aFrames = 0;
   xfer->timeComplete = 0;
   xfer->status = LIBUSB20_TRANSFER_ERROR;
  }
  libusb20_tr_callback_wrapper(xfer);
 }
 return (0);
}
