
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_backend {int dummy; } ;


 struct libusb20_backend* libusb20_be_alloc (int *) ;
 int libusb20_ugen20_backend ;

struct libusb20_backend *
libusb20_be_alloc_ugen20(void)
{
 return (libusb20_be_alloc(&libusb20_ugen20_backend));
}
