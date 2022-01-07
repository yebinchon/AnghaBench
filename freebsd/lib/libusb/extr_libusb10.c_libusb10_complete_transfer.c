
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb_transfer {int status; int dev_handle; } ;
struct libusb_super_transfer {int state; } ;
struct libusb_device {TYPE_1__* ctx; } ;
struct libusb20_transfer {int dummy; } ;
struct TYPE_2__ {int tr_done; } ;


 int LIBUSB_SUPER_XFER_ST_NONE ;
 int TAILQ_INSERT_TAIL (int *,struct libusb_super_transfer*,int ) ;
 int entry ;
 int libusb20_tr_set_priv_sc1 (struct libusb20_transfer*,int *) ;
 struct libusb_device* libusb_get_device (int ) ;

__attribute__((used)) static void
libusb10_complete_transfer(struct libusb20_transfer *pxfer,
    struct libusb_super_transfer *sxfer, int status)
{
 struct libusb_transfer *uxfer;
 struct libusb_device *dev;

 uxfer = (struct libusb_transfer *)(
     ((uint8_t *)sxfer) + sizeof(*sxfer));

 if (pxfer != ((void*)0))
  libusb20_tr_set_priv_sc1(pxfer, ((void*)0));


 uxfer->status = status;


 sxfer->state = LIBUSB_SUPER_XFER_ST_NONE;

 dev = libusb_get_device(uxfer->dev_handle);

 TAILQ_INSERT_TAIL(&dev->ctx->tr_done, sxfer, entry);
}
