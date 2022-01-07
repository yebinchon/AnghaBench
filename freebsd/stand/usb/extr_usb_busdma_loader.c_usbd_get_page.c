
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* usb_size_t ;
typedef void* usb_frlength_t ;
struct usb_page_search {void* physaddr; void* length; void* buffer; } ;
struct usb_page_cache {void* page_offset_buf; scalar_t__ buffer; scalar_t__ ismultiseg; struct usb_page* page_start; } ;
struct usb_page {void* physaddr; scalar_t__ buffer; } ;


 void* USB_ADD_BYTES (scalar_t__,void*) ;
 void* USB_PAGE_SIZE ;

void
usbd_get_page(struct usb_page_cache *pc, usb_frlength_t offset,
    struct usb_page_search *res)
{
 res->buffer = USB_ADD_BYTES(pc->buffer, offset);
 res->length = (usb_size_t)-1;



}
