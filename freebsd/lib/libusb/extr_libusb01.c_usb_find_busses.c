
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * usb_busses ;
 int usb_global_bus ;

int
usb_find_busses(void)
{
 usb_busses = &usb_global_bus;
 return (1);
}
