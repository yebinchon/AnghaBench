
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;
typedef int device_t ;


 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int USB_DR_MODE_DEVICE ;
 int USB_DR_MODE_HOST ;
 int USB_DR_MODE_OTG ;
 int USB_DR_MODE_UNKNOWN ;
 int device_printf (int ,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static enum usb_dr_mode
usb_get_dr_mode(device_t dev, phandle_t node, char *name)
{
 char *tmpstr;
 int rv;
 enum usb_dr_mode ret;

 rv = OF_getprop_alloc(node, name, (void **)&tmpstr);
 if (rv <= 0)
  return (USB_DR_MODE_UNKNOWN);

 ret = USB_DR_MODE_UNKNOWN;
 if (strcmp(tmpstr, "device") == 0)
  ret = USB_DR_MODE_DEVICE;
 else if (strcmp(tmpstr, "host") == 0)
  ret = USB_DR_MODE_HOST;
 else if (strcmp(tmpstr, "otg") == 0)
  ret = USB_DR_MODE_OTG;
 else
  device_printf(dev, "Unknown dr mode: %s\n", tmpstr);
 OF_prop_free(tmpstr);
 return (ret);
}
