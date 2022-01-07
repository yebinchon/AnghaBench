
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_ss_endpoint_companion_descriptor {int bLength; int bDescriptorType; int bMaxBurst; int bmAttributes; int wBytesPerInterval; } ;


 int LIBUSB_DT_SS_ENDPOINT_COMPANION ;
 int LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_IO ;
 int LIBUSB_ERROR_NO_MEM ;
 struct libusb_ss_endpoint_companion_descriptor* malloc (int) ;

int
libusb_parse_ss_endpoint_comp(const void *buf, int len,
    struct libusb_ss_endpoint_companion_descriptor **ep_comp)
{
 if (buf == ((void*)0) || ep_comp == ((void*)0) || len < 1)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (len > 65535)
  len = 65535;

 *ep_comp = ((void*)0);

 while (len != 0) {
  uint8_t dlen;
  uint8_t dtype;

  dlen = ((const uint8_t *)buf)[0];
  dtype = ((const uint8_t *)buf)[1];

  if (dlen < 2 || dlen > len)
   break;

  if (dlen >= LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE &&
      dtype == LIBUSB_DT_SS_ENDPOINT_COMPANION) {
   struct libusb_ss_endpoint_companion_descriptor *ptr;

   ptr = malloc(sizeof(*ptr));
   if (ptr == ((void*)0))
    return (LIBUSB_ERROR_NO_MEM);

   ptr->bLength = LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE;
   ptr->bDescriptorType = dtype;
   ptr->bMaxBurst = ((const uint8_t *)buf)[2];
   ptr->bmAttributes = ((const uint8_t *)buf)[3];
   ptr->wBytesPerInterval = ((const uint8_t *)buf)[4] |
       (((const uint8_t *)buf)[5] << 8);

   *ep_comp = ptr;

   return (0);
  }

  buf = ((const uint8_t *)buf) + dlen;
  len -= dlen;
 }
 return (LIBUSB_ERROR_IO);
}
