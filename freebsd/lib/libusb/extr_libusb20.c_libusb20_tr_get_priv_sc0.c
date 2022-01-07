
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {void* priv_sc0; } ;



void *
libusb20_tr_get_priv_sc0(struct libusb20_transfer *xfer)
{
 return (xfer->priv_sc0);
}
