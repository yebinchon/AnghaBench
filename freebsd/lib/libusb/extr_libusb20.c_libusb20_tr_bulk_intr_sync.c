
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct libusb20_transfer {struct libusb20_device* pdev; } ;
struct libusb20_device {int dummy; } ;


 int LIBUSB20_ERROR_OTHER ;
 scalar_t__ libusb20_dev_process (struct libusb20_device*) ;
 int libusb20_dev_wait_process (struct libusb20_device*,int) ;
 scalar_t__ libusb20_tr_get_actual_length (struct libusb20_transfer*) ;
 scalar_t__ libusb20_tr_get_max_total_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_status (struct libusb20_transfer*) ;
 scalar_t__ libusb20_tr_pending (struct libusb20_transfer*) ;
 int libusb20_tr_setup_bulk (struct libusb20_transfer*,void*,scalar_t__,scalar_t__) ;
 int libusb20_tr_start (struct libusb20_transfer*) ;

uint8_t
libusb20_tr_bulk_intr_sync(struct libusb20_transfer *xfer,
    void *pbuf, uint32_t length, uint32_t *pactlen,
    uint32_t timeout)
{
 struct libusb20_device *pdev = xfer->pdev;
 uint32_t transfer_max;
 uint32_t transfer_act;
 uint8_t retval;


 if (pactlen != ((void*)0))
  *pactlen = 0;


 if (libusb20_tr_pending(xfer))
  return (LIBUSB20_ERROR_OTHER);

 do {

  transfer_max =
      libusb20_tr_get_max_total_length(xfer);

  if (transfer_max > length)
   transfer_max = length;


  libusb20_tr_setup_bulk(xfer, pbuf,
      transfer_max, timeout);


  libusb20_tr_start(xfer);


  while (libusb20_dev_process(pdev) == 0) {

   if (libusb20_tr_pending(xfer) == 0)
    break;

   libusb20_dev_wait_process(pdev, -1);
  }

  transfer_act = libusb20_tr_get_actual_length(xfer);


  if (pactlen != ((void*)0))
   pactlen[0] += transfer_act;


  retval = libusb20_tr_get_status(xfer);
  if (retval)
   break;


  if (transfer_act != transfer_max)
   break;


  pbuf = ((uint8_t *)pbuf) + transfer_max;
  length = length - transfer_max;

 } while (length != 0);

 return (retval);
}
