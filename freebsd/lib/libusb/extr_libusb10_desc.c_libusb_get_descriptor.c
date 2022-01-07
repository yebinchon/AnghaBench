
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int libusb_device_handle ;


 int LIBUSB_ENDPOINT_IN ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_REQUEST_GET_DESCRIPTOR ;
 int libusb_control_transfer (int *,int ,int ,int,int ,int*,int,int) ;

int
libusb_get_descriptor(libusb_device_handle * devh, uint8_t desc_type,
    uint8_t desc_index, uint8_t *data, int length)
{
 if (devh == ((void*)0) || data == ((void*)0) || length < 1)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (length > 65535)
  length = 65535;

 return (libusb_control_transfer(devh, LIBUSB_ENDPOINT_IN,
     LIBUSB_REQUEST_GET_DESCRIPTOR, (desc_type << 8) | desc_index, 0, data,
     length, 1000));
}
