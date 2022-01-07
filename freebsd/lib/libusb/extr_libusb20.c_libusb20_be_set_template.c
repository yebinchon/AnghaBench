
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_backend {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* root_set_template ) (struct libusb20_backend*,int) ;} ;


 int stub1 (struct libusb20_backend*,int) ;

int
libusb20_be_set_template(struct libusb20_backend *pbe, int temp)
{
 return (pbe->methods->root_set_template(pbe, temp));
}
