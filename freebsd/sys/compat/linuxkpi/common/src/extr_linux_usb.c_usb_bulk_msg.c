
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_timeout_t ;
typedef int uint16_t ;
struct usb_host_endpoint {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,struct usb_host_endpoint*,void*,int,int ,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_linux_wait_complete ;
 int usb_setup_endpoint (struct usb_device*,struct usb_host_endpoint*,int) ;
 int usb_start_wait_urb (struct urb*,int ,int *) ;

int
usb_bulk_msg(struct usb_device *udev, struct usb_host_endpoint *uhe,
    void *data, int len, uint16_t *pactlen, usb_timeout_t timeout)
{
 struct urb *urb;
 int err;

 if (uhe == ((void*)0))
  return (-EINVAL);
 if (len < 0)
  return (-EINVAL);

 err = usb_setup_endpoint(udev, uhe, 4096 );
 if (err)
  return (err);

 urb = usb_alloc_urb(0, 0);
 if (urb == ((void*)0))
  return (-ENOMEM);

 usb_fill_bulk_urb(urb, udev, uhe, data, len,
     usb_linux_wait_complete, ((void*)0));

 err = usb_start_wait_urb(urb, timeout, pactlen);

 usb_free_urb(urb);

 return (err);
}
