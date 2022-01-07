
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_usb_2_0_device_capability_descriptor {int bLength; int bDescriptorType; int bDevCapabilityType; int bmAttributes; } ;
struct libusb_ss_usb_device_capability_descriptor {int bLength; int bDescriptorType; int bDevCapabilityType; int bmAttributes; int wSpeedSupported; int bFunctionalitySupport; int bU1DevExitLat; int wU2DevExitLat; } ;
struct libusb_bos_descriptor {int bLength; int bDescriptorType; int wTotalLength; int bNumDeviceCapabilities; struct libusb_ss_usb_device_capability_descriptor* ss_usb_cap; struct libusb_usb_2_0_device_capability_descriptor* usb_2_0_ext_cap; int ** dev_capability; } ;


 int LIBUSB_DT_BOS ;
 int LIBUSB_DT_BOS_SIZE ;
 int LIBUSB_DT_DEVICE_CAPABILITY ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_IO ;
 int LIBUSB_ERROR_NO_MEM ;

 int LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE ;

 int LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE ;
 int ** calloc (int,int) ;
 int free (struct libusb_bos_descriptor*) ;
 int libusb_free_bos_descriptor (struct libusb_bos_descriptor*) ;
 void* malloc (int) ;
 int memcpy (int *,void const*,int) ;

int
libusb_parse_bos_descriptor(const void *buf, int len,
    struct libusb_bos_descriptor **bos)
{
 struct libusb_bos_descriptor *ptr;
 struct libusb_usb_2_0_device_capability_descriptor *dcap_20 = ((void*)0);
 struct libusb_ss_usb_device_capability_descriptor *ss_cap = ((void*)0);
 uint8_t index = 0;

 if (buf == ((void*)0) || bos == ((void*)0) || len < 1)
  return (LIBUSB_ERROR_INVALID_PARAM);

 if (len > 65535)
  len = 65535;

 *bos = ptr = ((void*)0);

 while (len != 0) {
  uint8_t dlen;
  uint8_t dtype;

  dlen = ((const uint8_t *)buf)[0];
  dtype = ((const uint8_t *)buf)[1];

  if (dlen < 2 || dlen > len)
   break;

  if (dlen >= LIBUSB_DT_BOS_SIZE &&
      dtype == LIBUSB_DT_BOS &&
      ptr == ((void*)0)) {

   ptr = malloc(sizeof(*ptr) + sizeof(*dcap_20) +
       sizeof(*ss_cap));

   if (ptr == ((void*)0))
    return (LIBUSB_ERROR_NO_MEM);

   *bos = ptr;

   ptr->bLength = LIBUSB_DT_BOS_SIZE;
   ptr->bDescriptorType = dtype;
   ptr->wTotalLength = ((const uint8_t *)buf)[2] |
       (((const uint8_t *)buf)[3] << 8);
   ptr->bNumDeviceCapabilities = ((const uint8_t *)buf)[4];
   ptr->usb_2_0_ext_cap = ((void*)0);
   ptr->ss_usb_cap = ((void*)0);
   ptr->dev_capability = calloc(ptr->bNumDeviceCapabilities, sizeof(void *));
   if (ptr->dev_capability == ((void*)0)) {
    free(ptr);
    return (LIBUSB_ERROR_NO_MEM);
   }

   dcap_20 = (void *)(ptr + 1);
   ss_cap = (void *)(dcap_20 + 1);
  }
  if (dlen >= 3 &&
      ptr != ((void*)0) &&
      dtype == LIBUSB_DT_DEVICE_CAPABILITY) {
   if (index != ptr->bNumDeviceCapabilities) {
    ptr->dev_capability[index] = malloc(dlen);
    if (ptr->dev_capability[index] == ((void*)0)) {
     libusb_free_bos_descriptor(ptr);
     return LIBUSB_ERROR_NO_MEM;
    }
    memcpy(ptr->dev_capability[index], buf, dlen);
    index++;
   }
   switch (((const uint8_t *)buf)[2]) {
   case 128:
    if (ptr->usb_2_0_ext_cap != ((void*)0) || dcap_20 == ((void*)0))
     break;
    if (dlen < LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE)
     break;

    ptr->usb_2_0_ext_cap = dcap_20;

    dcap_20->bLength = LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE;
    dcap_20->bDescriptorType = dtype;
    dcap_20->bDevCapabilityType = ((const uint8_t *)buf)[2];
    dcap_20->bmAttributes = ((const uint8_t *)buf)[3] |
        (((const uint8_t *)buf)[4] << 8) |
        (((const uint8_t *)buf)[5] << 16) |
        (((const uint8_t *)buf)[6] << 24);
    break;

   case 129:
    if (ptr->ss_usb_cap != ((void*)0) || ss_cap == ((void*)0))
     break;
    if (dlen < LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE)
     break;

    ptr->ss_usb_cap = ss_cap;

    ss_cap->bLength = LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE;
    ss_cap->bDescriptorType = dtype;
    ss_cap->bDevCapabilityType = ((const uint8_t *)buf)[2];
    ss_cap->bmAttributes = ((const uint8_t *)buf)[3];
    ss_cap->wSpeedSupported = ((const uint8_t *)buf)[4] |
        (((const uint8_t *)buf)[5] << 8);
    ss_cap->bFunctionalitySupport = ((const uint8_t *)buf)[6];
    ss_cap->bU1DevExitLat = ((const uint8_t *)buf)[7];
    ss_cap->wU2DevExitLat = ((const uint8_t *)buf)[8] |
        (((const uint8_t *)buf)[9] << 8);
    break;

   default:
    break;
   }
  }

  buf = ((const uint8_t *)buf) + dlen;
  len -= dlen;
 }

 if (ptr != ((void*)0)) {
  ptr->bNumDeviceCapabilities = index;
  return (0);
 }

 return (LIBUSB_ERROR_IO);
}
