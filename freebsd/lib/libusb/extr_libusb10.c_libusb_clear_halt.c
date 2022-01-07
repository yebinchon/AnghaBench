
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_device {int ctx; } ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {int dummy; } ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int LIBUSB20_ERROR_BUSY ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_OTHER ;
 struct libusb20_transfer* libusb10_get_transfer (struct libusb20_device*,int ,int ) ;
 int libusb20_tr_clear_stall_sync (struct libusb20_transfer*) ;
 int libusb20_tr_close (struct libusb20_transfer*) ;
 int libusb20_tr_open (struct libusb20_transfer*,int ,int,int ) ;
 struct libusb_device* libusb_get_device (struct libusb20_device*) ;

int
libusb_clear_halt(struct libusb20_device *pdev, uint8_t endpoint)
{
 struct libusb20_transfer *xfer;
 struct libusb_device *dev;
 int err;

 xfer = libusb10_get_transfer(pdev, endpoint, 0);
 if (xfer == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 dev = libusb_get_device(pdev);
 if (dev == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 CTX_LOCK(dev->ctx);
 err = libusb20_tr_open(xfer, 0, 1, endpoint);
 CTX_UNLOCK(dev->ctx);

 if (err != 0 && err != LIBUSB20_ERROR_BUSY)
  return (LIBUSB_ERROR_OTHER);

 libusb20_tr_clear_stall_sync(xfer);


 if (err == 0) {
  CTX_LOCK(dev->ctx);
  libusb20_tr_close(xfer);
  CTX_UNLOCK(dev->ctx);
 }
 return (0);
}
