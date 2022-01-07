
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int libusb_device_handle ;


 int LIBUSB_DT_STRING ;
 int LIBUSB_ENDPOINT_IN ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_REQUEST_GET_DESCRIPTOR ;
 int libusb_control_transfer (int *,int ,int ,int,int ,unsigned char*,int,int) ;

int
libusb_get_string_descriptor(libusb_device_handle *pdev,
    uint8_t desc_index, uint16_t langid, unsigned char *data,
    int length)
{
 if (pdev == ((void*)0) || data == ((void*)0) || length < 1)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (length > 65535)
  length = 65535;


 data[0] = 0;

 return (libusb_control_transfer(pdev, LIBUSB_ENDPOINT_IN,
     LIBUSB_REQUEST_GET_DESCRIPTOR, (LIBUSB_DT_STRING << 8) | desc_index,
     langid, data, length, 1000));
}
