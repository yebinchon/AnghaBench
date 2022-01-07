
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct libusb20_quirk {int dummy; } ;
struct libusb20_backend {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* root_get_quirk_name ) (struct libusb20_backend*,int ,struct libusb20_quirk*) ;} ;


 int stub1 (struct libusb20_backend*,int ,struct libusb20_quirk*) ;

int
libusb20_be_get_quirk_name(struct libusb20_backend *pbe,
    uint16_t quirk_index, struct libusb20_quirk *pq)
{
 return (pbe->methods->root_get_quirk_name(pbe, quirk_index, pq));
}
