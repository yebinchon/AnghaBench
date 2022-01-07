
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;


 struct usb_bus* usb_busses ;

struct usb_bus *
usb_get_busses(void)
{
 return (usb_busses);
}
