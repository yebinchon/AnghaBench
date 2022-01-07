
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_ctl_request {int ucr_actlen; int ucr_request; int ucr_flags; int ucr_data; } ;
struct libusb20_device {int file_ctrl; } ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int dummy; } ;
typedef int req ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_OTHER ;
 int LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK ;
 int USB_DO_REQUEST ;
 int USB_SHORT_XFER_OK ;
 scalar_t__ ioctl (int ,int ,struct usb_ctl_request*) ;
 scalar_t__ libusb20_me_encode (int *,int,struct LIBUSB20_CONTROL_SETUP_DECODED*) ;
 int libusb20_pass_ptr (void*) ;
 int memset (struct usb_ctl_request*,int ,int) ;

__attribute__((used)) static int
ugen20_do_request_sync(struct libusb20_device *pdev,
    struct LIBUSB20_CONTROL_SETUP_DECODED *setup,
    void *data, uint16_t *pactlen, uint32_t timeout, uint8_t flags)
{
 struct usb_ctl_request req;

 memset(&req, 0, sizeof(req));

 req.ucr_data = libusb20_pass_ptr(data);
 if (!(flags & LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK)) {
  req.ucr_flags |= USB_SHORT_XFER_OK;
 }
 if (libusb20_me_encode(&req.ucr_request,
     sizeof(req.ucr_request), setup)) {

 }
 if (ioctl(pdev->file_ctrl, IOUSB(USB_DO_REQUEST), &req)) {
  return (LIBUSB20_ERROR_OTHER);
 }
 if (pactlen) {

  *pactlen = req.ucr_actlen;
 }
 return (0);
}
