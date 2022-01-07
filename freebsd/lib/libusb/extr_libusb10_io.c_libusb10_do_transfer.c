
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb_transfer {int type; unsigned int timeout; int length; int actual_length; int status; int callback; void* user_data; int * buffer; int endpoint; int * dev_handle; } ;
typedef int libusb_device_handle ;
typedef int libusb_context ;
struct TYPE_2__ {int * ctx; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_DEVICE ;
 int LIBUSB_ERROR_NO_MEM ;
 int LIBUSB_ERROR_OTHER ;
 int LIBUSB_ERROR_OVERFLOW ;
 int LIBUSB_ERROR_PIPE ;
 int LIBUSB_ERROR_TIMEOUT ;





 int libusb10_do_transfer_cb ;
 struct libusb_transfer* libusb_alloc_transfer (int ) ;
 int libusb_cancel_transfer (struct libusb_transfer*) ;
 int libusb_free_transfer (struct libusb_transfer*) ;
 TYPE_1__* libusb_get_device (int *) ;
 int libusb_handle_events (int *) ;
 int libusb_submit_transfer (struct libusb_transfer*) ;
 int usleep (int) ;

__attribute__((used)) static int
libusb10_do_transfer(libusb_device_handle *devh,
    uint8_t endpoint, uint8_t *data, int length,
    int *transferred, unsigned int timeout, int type)
{
 libusb_context *ctx;
 struct libusb_transfer *xfer;
 int done;
 int ret;

 if (devh == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 if ((length != 0) && (data == ((void*)0)))
  return (LIBUSB_ERROR_INVALID_PARAM);

 xfer = libusb_alloc_transfer(0);
 if (xfer == ((void*)0))
  return (LIBUSB_ERROR_NO_MEM);

 ctx = libusb_get_device(devh)->ctx;

 xfer->dev_handle = devh;
 xfer->endpoint = endpoint;
 xfer->type = type;
 xfer->timeout = timeout;
 xfer->buffer = data;
 xfer->length = length;
 xfer->user_data = (void *)&done;
 xfer->callback = libusb10_do_transfer_cb;
 done = 0;

 if ((ret = libusb_submit_transfer(xfer)) < 0) {
  libusb_free_transfer(xfer);
  return (ret);
 }
 while (done == 0) {
  if ((ret = libusb_handle_events(ctx)) < 0) {
   libusb_cancel_transfer(xfer);
   usleep(1000);
  }
 }

 *transferred = xfer->actual_length;

 switch (xfer->status) {
 case 132:
  ret = 0;
  break;
 case 128:
  ret = LIBUSB_ERROR_TIMEOUT;
  break;
 case 130:
  ret = LIBUSB_ERROR_OVERFLOW;
  break;
 case 129:
  ret = LIBUSB_ERROR_PIPE;
  break;
 case 131:
  ret = LIBUSB_ERROR_NO_DEVICE;
  break;
 default:
  ret = LIBUSB_ERROR_OTHER;
  break;
 }

 libusb_free_transfer(xfer);
 return (ret);
}
