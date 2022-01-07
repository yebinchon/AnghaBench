
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_quirk {int dummy; } ;
struct libusb20_backend {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* root_remove_dev_quirk ) (struct libusb20_backend*,struct libusb20_quirk*) ;} ;


 int stub1 (struct libusb20_backend*,struct libusb20_quirk*) ;

int
libusb20_be_remove_dev_quirk(struct libusb20_backend *pbe,
    struct libusb20_quirk *pq)
{
 return (pbe->methods->root_remove_dev_quirk(pbe, pq));
}
