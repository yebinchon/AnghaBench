
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int os_priv; } ;
typedef TYPE_1__ libusb_device ;
typedef int libusb_context ;


 int libusb20_dev_get_port_path (int ,int *,int ) ;

int
libusb_get_port_path(libusb_context *ctx, libusb_device *dev, uint8_t *buf,
    uint8_t bufsize)
{
 return (libusb20_dev_get_port_path(dev->os_priv, buf, bufsize));
}
