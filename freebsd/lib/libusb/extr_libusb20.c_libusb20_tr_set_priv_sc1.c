
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {void* priv_sc1; } ;



void
libusb20_tr_set_priv_sc1(struct libusb20_transfer *xfer, void *sc1)
{
 xfer->priv_sc1 = sc1;
 return;
}
