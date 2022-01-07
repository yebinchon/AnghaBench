
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;


 int libusb20_dev_req_string_simple_sync (void*,int,char*,size_t) ;
 int strlen (char*) ;

int
usb_get_string_simple(usb_dev_handle * dev, int strindex,
    char *buf, size_t buflen)
{
 int err;

 if (dev == ((void*)0))
  return (-1);

 if (buflen > 65535)
  buflen = 65535;

 err = libusb20_dev_req_string_simple_sync((void *)dev,
     strindex, buf, buflen);

 if (err)
  return (-1);

 return (strlen(buf));
}
