
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef scalar_t__ uint16_t ;
struct LIBUSB20_CONTROL_SETUP_DECODED {scalar_t__ wLength; scalar_t__ wIndex; scalar_t__ wValue; void* bRequest; void* bmRequestType; } ;
typedef int libusb_device_handle ;


 int LIBUSB20_CONTROL_SETUP ;
 int LIBUSB20_ERROR_PIPE ;
 int LIBUSB20_ERROR_TIMEOUT ;
 int LIBUSB20_INIT (int ,struct LIBUSB20_CONTROL_SETUP_DECODED*) ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_DEVICE ;
 int LIBUSB_ERROR_PIPE ;
 int LIBUSB_ERROR_TIMEOUT ;
 int libusb20_dev_request_sync (int *,struct LIBUSB20_CONTROL_SETUP_DECODED*,void**,scalar_t__*,unsigned int,int ) ;

int
libusb_control_transfer(libusb_device_handle *devh,
    uint8_t bmRequestType, uint8_t bRequest, uint16_t wValue, uint16_t wIndex,
    uint8_t *data, uint16_t wLength, unsigned int timeout)
{
 struct LIBUSB20_CONTROL_SETUP_DECODED req;
 int err;
 uint16_t actlen;

 if (devh == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if ((wLength != 0) && (data == ((void*)0)))
  return (LIBUSB_ERROR_INVALID_PARAM);

 LIBUSB20_INIT(LIBUSB20_CONTROL_SETUP, &req);

 req.bmRequestType = bmRequestType;
 req.bRequest = bRequest;
 req.wValue = wValue;
 req.wIndex = wIndex;
 req.wLength = wLength;

 err = libusb20_dev_request_sync(devh, &req, data,
     &actlen, timeout, 0);

 if (err == LIBUSB20_ERROR_PIPE)
  return (LIBUSB_ERROR_PIPE);
 else if (err == LIBUSB20_ERROR_TIMEOUT)
  return (LIBUSB_ERROR_TIMEOUT);
 else if (err)
  return (LIBUSB_ERROR_NO_DEVICE);

 return (actlen);
}
