
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;


 int libusb20_dev_req_string_sync (void*,int,int,char*,size_t) ;

int
usb_get_string(usb_dev_handle * dev, int strindex,
    int langid, char *buf, size_t buflen)
{
 int err;

 if (dev == ((void*)0))
  return (-1);

 if (buflen > 65535)
  buflen = 65535;

 err = libusb20_dev_req_string_sync((void *)dev,
     strindex, langid, buf, buflen);

 if (err)
  return (-1);

 return (0);
}
