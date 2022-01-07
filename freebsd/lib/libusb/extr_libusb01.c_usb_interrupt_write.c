
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;


 int USB_ENDPOINT_DIR_MASK ;
 int usb_std_io (int *,int,char*,int,int,int) ;

int
usb_interrupt_write(usb_dev_handle * dev, int ep, char *bytes,
    int size, int timeout)
{
 return (usb_std_io(dev, ep & ~USB_ENDPOINT_DIR_MASK,
     bytes, size, timeout, 1));
}
