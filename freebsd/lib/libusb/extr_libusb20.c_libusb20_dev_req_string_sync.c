
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int bmRequestType; int wValue; int wIndex; int wLength; int bRequest; } ;


 int LIBUSB20_CONTROL_SETUP ;
 int LIBUSB20_DT_STRING ;
 int LIBUSB20_ENDPOINT_IN ;
 int LIBUSB20_ERROR_INVALID_PARAM ;
 int LIBUSB20_ERROR_OTHER ;
 int LIBUSB20_INIT (int ,struct LIBUSB20_CONTROL_SETUP_DECODED*) ;
 int LIBUSB20_RECIPIENT_DEVICE ;
 int LIBUSB20_REQUEST_GET_DESCRIPTOR ;
 int LIBUSB20_REQUEST_TYPE_STANDARD ;
 int LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK ;
 int libusb20_dev_request_sync (struct libusb20_device*,struct LIBUSB20_CONTROL_SETUP_DECODED*,void*,int *,int,int) ;
 int memset (void*,int ,int) ;

int
libusb20_dev_req_string_sync(struct libusb20_device *pdev,
    uint8_t str_index, uint16_t langid, void *ptr, uint16_t len)
{
 struct LIBUSB20_CONTROL_SETUP_DECODED req;
 int error;
 int flags;


 memset(ptr, 0, len);

 if (len < 4) {

  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 LIBUSB20_INIT(LIBUSB20_CONTROL_SETUP, &req);





 req.bmRequestType =
     LIBUSB20_REQUEST_TYPE_STANDARD |
     LIBUSB20_RECIPIENT_DEVICE |
     LIBUSB20_ENDPOINT_IN;
 req.bRequest = LIBUSB20_REQUEST_GET_DESCRIPTOR;
 req.wValue = (LIBUSB20_DT_STRING << 8) | str_index;
 req.wIndex = langid;
 req.wLength = 4;

 error = libusb20_dev_request_sync(pdev, &req,
     ptr, ((void*)0), 1000, LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK);
 if (error) {

  req.wLength = 255;
  flags = 0;
 } else {

  req.wLength = *(uint8_t *)ptr;
  flags = LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK;
 }
 if (req.wLength > len) {

  req.wLength = len;
 }
 error = libusb20_dev_request_sync(pdev, &req, ptr, ((void*)0), 1000, flags);
 if (error)
  return (error);

 if (((uint8_t *)ptr)[1] != LIBUSB20_DT_STRING)
  return (LIBUSB20_ERROR_OTHER);
 return (0);
}
