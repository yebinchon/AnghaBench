
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_device {TYPE_1__* beMethods; } ;
struct TYPE_2__ {char const* (* get_backend_name ) () ;} ;


 char const* stub1 () ;

const char *
libusb20_dev_get_backend_name(struct libusb20_device *pdev)
{
 return (pdev->beMethods->get_backend_name());
}
