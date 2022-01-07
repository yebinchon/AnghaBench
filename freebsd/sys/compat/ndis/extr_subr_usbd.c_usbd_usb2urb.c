
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int USBD_STATUS_CANCELED ;
 int USBD_STATUS_DEVICE_GONE ;
 int USBD_STATUS_ERROR_SHORT_TRANSFER ;
 int USBD_STATUS_NOT_SUPPORTED ;
 int USBD_STATUS_NO_MEMORY ;
 int USBD_STATUS_PENDING ;
 int USBD_STATUS_REQUEST_FAILED ;
 int USBD_STATUS_SUCCESS ;
 int USBD_STATUS_TIMEOUT ;
 int USBD_STATUS_XACT_ERROR ;
__attribute__((used)) static int32_t
usbd_usb2urb(int status)
{

 switch (status) {
 case 134:
  return (USBD_STATUS_SUCCESS);
 case 131:
  return (USBD_STATUS_PENDING);
 case 129:
  return (USBD_STATUS_TIMEOUT);
 case 130:
  return (USBD_STATUS_ERROR_SHORT_TRANSFER);
 case 136:
  return (USBD_STATUS_XACT_ERROR);
 case 135:
  return (USBD_STATUS_NO_MEMORY);
 case 137:
  return (USBD_STATUS_REQUEST_FAILED);
 case 133:
 case 128:
 case 132:
  return (USBD_STATUS_DEVICE_GONE);
 case 138:
  return (USBD_STATUS_CANCELED);
 default:
  break;
 }

 return (USBD_STATUS_NOT_SUPPORTED);
}
