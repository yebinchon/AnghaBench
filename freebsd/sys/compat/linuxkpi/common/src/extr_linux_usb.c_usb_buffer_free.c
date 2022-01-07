
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
struct usb_device {int dummy; } ;


 int M_USBDEV ;
 int free (void*,int ) ;

void
usb_buffer_free(struct usb_device *dev, usb_size_t size,
    void *addr, uint8_t dma_addr)
{
 free(addr, M_USBDEV);
}
