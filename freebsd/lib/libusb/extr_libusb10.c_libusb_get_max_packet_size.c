
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct libusb_interface_descriptor {int bNumEndpoints; struct libusb_endpoint_descriptor* endpoint; } ;
struct libusb_interface {int num_altsetting; struct libusb_interface_descriptor* altsetting; } ;
struct libusb_endpoint_descriptor {scalar_t__ bEndpointAddress; int wMaxPacketSize; } ;
struct libusb_config_descriptor {int bNumInterfaces; struct libusb_interface* interface; } ;
typedef int libusb_device ;


 int LIBUSB_ERROR_NOT_FOUND ;
 int LIBUSB_ERROR_NO_DEVICE ;
 int libusb_free_config_descriptor (struct libusb_config_descriptor*) ;
 int libusb_get_active_config_descriptor (int *,struct libusb_config_descriptor**) ;

int
libusb_get_max_packet_size(libusb_device *dev, uint8_t endpoint)
{
 struct libusb_config_descriptor *pdconf;
 struct libusb_interface *pinf;
 struct libusb_interface_descriptor *pdinf;
 struct libusb_endpoint_descriptor *pdend;
 int i;
 int j;
 int k;
 int ret;

 if (dev == ((void*)0))
  return (LIBUSB_ERROR_NO_DEVICE);

 ret = libusb_get_active_config_descriptor(dev, &pdconf);
 if (ret < 0)
  return (ret);

 ret = LIBUSB_ERROR_NOT_FOUND;
 for (i = 0; i < pdconf->bNumInterfaces; i++) {
  pinf = &pdconf->interface[i];
  for (j = 0; j < pinf->num_altsetting; j++) {
   pdinf = &pinf->altsetting[j];
   for (k = 0; k < pdinf->bNumEndpoints; k++) {
    pdend = &pdinf->endpoint[k];
    if (pdend->bEndpointAddress == endpoint) {
     ret = pdend->wMaxPacketSize;
     goto out;
    }
   }
  }
 }

out:
 libusb_free_config_descriptor(pdconf);
 return (ret);
}
