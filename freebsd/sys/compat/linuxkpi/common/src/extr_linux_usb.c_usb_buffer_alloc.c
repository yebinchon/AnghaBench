
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_size_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 void* malloc (int ,int ,int) ;

void *
usb_buffer_alloc(struct usb_device *dev, usb_size_t size, uint16_t mem_flags, uint8_t *dma_addr)
{
 return (malloc(size, M_USBDEV, M_WAITOK | M_ZERO));
}
