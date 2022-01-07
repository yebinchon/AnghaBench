
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_version {int dummy; } ;


 struct libusb_version const libusb_version ;

const struct libusb_version *
libusb_get_version(void)
{

 return (&libusb_version);
}
