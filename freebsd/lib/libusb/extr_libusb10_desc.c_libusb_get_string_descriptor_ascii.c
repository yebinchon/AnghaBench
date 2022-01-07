
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int libusb_device_handle ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_OTHER ;
 scalar_t__ libusb20_dev_req_string_simple_sync (int *,int ,unsigned char*,int) ;
 int strlen (char*) ;

int
libusb_get_string_descriptor_ascii(libusb_device_handle *pdev,
    uint8_t desc_index, unsigned char *data, int length)
{
 if (pdev == ((void*)0) || data == ((void*)0) || length < 1)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (length > 65535)
  length = 65535;


 data[0] = 0;

 if (libusb20_dev_req_string_simple_sync(pdev, desc_index,
     data, length) == 0)
  return (strlen((char *)data));

 return (LIBUSB_ERROR_OTHER);
}
