
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
struct usb_host_endpoint {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_buffer_length; void* context; int complete; void* transfer_buffer; struct usb_host_endpoint* endpoint; struct usb_device* dev; } ;



void
usb_fill_bulk_urb(struct urb *urb, struct usb_device *udev,
    struct usb_host_endpoint *uhe, void *buf,
    int length, usb_complete_t callback, void *arg)
{
 urb->dev = udev;
 urb->endpoint = uhe;
 urb->transfer_buffer = buf;
 urb->transfer_buffer_length = length;
 urb->complete = callback;
 urb->context = arg;
}
