
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_frlength_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct usb_page_cache {int dummy; } ;


 int memset (int ,int ,scalar_t__) ;
 int usbd_get_page (struct usb_page_cache*,scalar_t__,struct usb_page_search*) ;

void
usbd_frame_zero(struct usb_page_cache *cache, usb_frlength_t offset,
    usb_frlength_t len)
{
 struct usb_page_search res;

 while (len != 0) {

  usbd_get_page(cache, offset, &res);

  if (res.length > len) {
   res.length = len;
  }
  memset(res.buffer, 0, res.length);

  offset += res.length;
  len -= res.length;
 }
}
