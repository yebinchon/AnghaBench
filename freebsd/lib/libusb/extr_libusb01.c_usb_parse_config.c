
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int * currextra; scalar_t__ currifc; struct libusb20_config* currcfg; } ;
struct TYPE_5__ {int currifcw; struct usb_config_descriptor* currcfg; } ;
struct usb_parse_state {scalar_t__ preparse; TYPE_3__ a; TYPE_2__ b; } ;
struct usb_config_descriptor {scalar_t__ bNumInterfaces; int extralen; int extra; int interface; int MaxPower; int bmAttributes; int iConfiguration; int bConfigurationValue; int wTotalLength; int bDescriptorType; int bLength; } ;
struct TYPE_4__ {int bMaxPower; int bmAttributes; int iConfiguration; int bConfigurationValue; int wTotalLength; int bDescriptorType; int bLength; } ;
struct libusb20_config {scalar_t__ num_interface; scalar_t__ interface; int extra; TYPE_1__ desc; } ;


 int usb_parse_extra (struct usb_parse_state*,int *,int *) ;
 int usb_parse_iface (struct usb_parse_state*) ;

__attribute__((used)) static void
usb_parse_config(struct usb_parse_state *ps)
{
 struct libusb20_config *acfg;
 struct usb_config_descriptor *bcfg;
 uint8_t x;

 acfg = ps->a.currcfg;
 bcfg = ps->b.currcfg;

 if (ps->preparse == 0) {

  bcfg->bLength = acfg->desc.bLength;
  bcfg->bDescriptorType = acfg->desc.bDescriptorType;
  bcfg->wTotalLength = acfg->desc.wTotalLength;
  bcfg->bNumInterfaces = acfg->num_interface;
  bcfg->bConfigurationValue = acfg->desc.bConfigurationValue;
  bcfg->iConfiguration = acfg->desc.iConfiguration;
  bcfg->bmAttributes = acfg->desc.bmAttributes;
  bcfg->MaxPower = acfg->desc.bMaxPower;
  bcfg->interface = ps->b.currifcw;
 }
 for (x = 0; x != acfg->num_interface; x++) {
  ps->a.currifc = acfg->interface + x;
  usb_parse_iface(ps);
 }

 ps->a.currextra = &acfg->extra;
 usb_parse_extra(ps, &bcfg->extra, &bcfg->extralen);
 return;
}
