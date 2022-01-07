
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;


 int usb_clear_halt (int *,unsigned int) ;

int
usb_resetep(usb_dev_handle * dev, unsigned int ep)
{

 return (usb_clear_halt(dev, ep));
}
