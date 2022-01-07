
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * currextra; struct libusb20_endpoint* currep; } ;
struct TYPE_4__ {int currep; } ;
struct usb_parse_state {scalar_t__ preparse; TYPE_3__ a; TYPE_1__ b; } ;
struct usb_endpoint_descriptor {int extralen; int extra; int bSynchAddress; int bRefresh; int bInterval; int wMaxPacketSize; int bmAttributes; int bEndpointAddress; int bDescriptorType; int bLength; } ;
struct TYPE_5__ {int bSynchAddress; int bRefresh; int bInterval; int wMaxPacketSize; int bmAttributes; int bEndpointAddress; int bDescriptorType; int bLength; } ;
struct libusb20_endpoint {int extra; TYPE_2__ desc; } ;


 int usb_parse_extra (struct usb_parse_state*,int *,int *) ;

__attribute__((used)) static void
usb_parse_endpoint(struct usb_parse_state *ps)
{
 struct usb_endpoint_descriptor *bep;
 struct libusb20_endpoint *aep;

 aep = ps->a.currep;
 bep = ps->b.currep++;

 if (ps->preparse == 0) {

  bep->bLength = aep->desc.bLength;
  bep->bDescriptorType = aep->desc.bDescriptorType;
  bep->bEndpointAddress = aep->desc.bEndpointAddress;
  bep->bmAttributes = aep->desc.bmAttributes;
  bep->wMaxPacketSize = aep->desc.wMaxPacketSize;
  bep->bInterval = aep->desc.bInterval;
  bep->bRefresh = aep->desc.bRefresh;
  bep->bSynchAddress = aep->desc.bSynchAddress;
 }
 ps->a.currextra = &aep->extra;
 usb_parse_extra(ps, &bep->extra, &bep->extralen);
 return;
}
