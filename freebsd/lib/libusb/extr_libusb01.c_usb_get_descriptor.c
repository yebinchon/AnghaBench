
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
typedef int uint8_t ;


 int USB_ENDPOINT_IN ;
 int USB_REQ_GET_DESCRIPTOR ;
 int memset (void*,int ,int) ;
 int usb_control_msg (int *,int ,int ,int,int ,void*,int,int) ;

int
usb_get_descriptor(usb_dev_handle * udev, uint8_t type, uint8_t desc_index,
    void *buf, int size)
{
 memset(buf, 0, size);

 if (udev == ((void*)0))
  return (-1);

 if (size > 65535)
  size = 65535;

 return (usb_control_msg(udev, USB_ENDPOINT_IN, USB_REQ_GET_DESCRIPTOR,
     (type << 8) + desc_index, 0, buf, size, 1000));
}
