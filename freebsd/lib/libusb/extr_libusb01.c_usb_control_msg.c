
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
typedef int uint16_t ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int bmRequestType; int bRequest; int wValue; int wIndex; int wLength; } ;


 int LIBUSB20_CONTROL_SETUP ;
 int LIBUSB20_INIT (int ,struct LIBUSB20_CONTROL_SETUP_DECODED*) ;
 int libusb20_dev_request_sync (void*,struct LIBUSB20_CONTROL_SETUP_DECODED*,char*,int*,int,int ) ;

int
usb_control_msg(usb_dev_handle * dev, int requesttype, int request,
    int value, int wIndex, char *bytes, int size, int timeout)
{
 struct LIBUSB20_CONTROL_SETUP_DECODED req;
 int err;
 uint16_t actlen;

 LIBUSB20_INIT(LIBUSB20_CONTROL_SETUP, &req);

 req.bmRequestType = requesttype;
 req.bRequest = request;
 req.wValue = value;
 req.wIndex = wIndex;
 req.wLength = size;

 err = libusb20_dev_request_sync((void *)dev, &req, bytes,
     &actlen, timeout, 0);

 if (err)
  return (-1);

 return (actlen);
}
