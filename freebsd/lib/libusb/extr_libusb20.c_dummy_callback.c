
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_transfer {int dummy; } ;



 int libusb20_tr_get_status (struct libusb20_transfer*) ;
 int libusb20_tr_submit (struct libusb20_transfer*) ;

__attribute__((used)) static void
dummy_callback(struct libusb20_transfer *xfer)
{
 ;
 switch (libusb20_tr_get_status(xfer)) {
 case 128:
  libusb20_tr_submit(xfer);
  break;
 default:

  break;
 }
 return;
}
