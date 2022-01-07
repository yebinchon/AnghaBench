
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_backend {int dummy; } ;


 int IOUSB (int ) ;
 int USB_SET_TEMPLATE ;
 int ugen20_be_ioctl (int ,int*) ;

__attribute__((used)) static int
ugen20_root_set_template(struct libusb20_backend *pbe, int temp)
{
 return (ugen20_be_ioctl(IOUSB(USB_SET_TEMPLATE), &temp));
}
