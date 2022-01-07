
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {struct libusb20_interface* currifc; } ;
struct TYPE_4__ {int currifc; int currifcw; } ;
struct usb_parse_state {scalar_t__ preparse; TYPE_1__ a; TYPE_2__ b; } ;
struct usb_interface {scalar_t__ num_altsetting; int altsetting; } ;
struct libusb20_interface {scalar_t__ num_altsetting; scalar_t__ altsetting; } ;


 int usb_parse_iface_sub (struct usb_parse_state*) ;

__attribute__((used)) static void
usb_parse_iface(struct usb_parse_state *ps)
{
 struct libusb20_interface *aifc;
 struct usb_interface *bifc;
 uint8_t x;

 aifc = ps->a.currifc;
 bifc = ps->b.currifcw++;

 if (ps->preparse == 0) {

  bifc->altsetting = ps->b.currifc;
  bifc->num_altsetting = aifc->num_altsetting + 1;
 }
 usb_parse_iface_sub(ps);

 for (x = 0; x != aifc->num_altsetting; x++) {
  ps->a.currifc = aifc->altsetting + x;
  usb_parse_iface_sub(ps);
 }
 return;
}
