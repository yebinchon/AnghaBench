
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
typedef int uint32_t ;
struct libusb20_transfer {int dummy; } ;


 int ENXIO ;
 int ETIMEDOUT ;

 scalar_t__ libusb20_dev_process (void*) ;
 int libusb20_dev_wait_process (void*,int) ;
 int libusb20_tr_get_actual_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_max_total_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_status (struct libusb20_transfer*) ;
 scalar_t__ libusb20_tr_pending (struct libusb20_transfer*) ;
 int libusb20_tr_setup_bulk (struct libusb20_transfer*,char*,int,int) ;
 int libusb20_tr_setup_intr (struct libusb20_transfer*,char*,int,int) ;
 int libusb20_tr_start (struct libusb20_transfer*) ;
 struct libusb20_transfer* usb_get_transfer_by_ep_no (int *,int) ;

__attribute__((used)) static int
usb_std_io(usb_dev_handle * dev, int ep, char *bytes, int size,
    int timeout, int is_intr)
{
 struct libusb20_transfer *xfer;
 uint32_t temp;
 uint32_t maxsize;
 uint32_t actlen;
 char *oldbytes;

 xfer = usb_get_transfer_by_ep_no(dev, ep);
 if (xfer == ((void*)0))
  return (-1);

 if (libusb20_tr_pending(xfer)) {

  return (-1);
 }
 maxsize = libusb20_tr_get_max_total_length(xfer);
 oldbytes = bytes;





 do {

  temp = size;
  if (temp > maxsize) {

   temp = maxsize;
  }
  if (is_intr)
   libusb20_tr_setup_intr(xfer, bytes, temp, timeout);
  else
   libusb20_tr_setup_bulk(xfer, bytes, temp, timeout);

  libusb20_tr_start(xfer);

  while (1) {

   if (libusb20_dev_process((void *)dev) != 0) {

    return (-1);
   }
   if (libusb20_tr_pending(xfer) == 0) {

    break;
   }

   libusb20_dev_wait_process((void *)dev, -1);
  }

  switch (libusb20_tr_get_status(xfer)) {
  case 0:

   break;
  case 128:

   return (-ETIMEDOUT);
  default:

   return (-ENXIO);
  }
  actlen = libusb20_tr_get_actual_length(xfer);

  bytes += actlen;
  size -= actlen;

  if (actlen != temp) {

   break;
  }
 } while (size > 0);

 return (bytes - oldbytes);
}
