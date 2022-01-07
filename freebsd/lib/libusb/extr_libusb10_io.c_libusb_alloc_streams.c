
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int libusb_device_handle ;


 int LIBUSB_ERROR_INVALID_PARAM ;

int
libusb_alloc_streams(libusb_device_handle *dev, uint32_t num_streams,
    unsigned char *endpoints, int num_endpoints)
{
 if (num_streams > 1)
  return (LIBUSB_ERROR_INVALID_PARAM);
 return (0);
}
