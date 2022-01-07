
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_backend {int dummy; } ;


 struct libusb20_backend* libusb20_be_alloc_linux () ;
 struct libusb20_backend* libusb20_be_alloc_ugen20 () ;

struct libusb20_backend *
libusb20_be_alloc_default(void)
{
 struct libusb20_backend *pbe;


 pbe = libusb20_be_alloc_linux();
 if (pbe) {
  return (pbe);
 }

 pbe = libusb20_be_alloc_ugen20();
 if (pbe) {
  return (pbe);
 }
 return (((void*)0));
}
