
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb_config_descriptor {int dummy; } ;
struct libusb20_device {int dummy; } ;
struct TYPE_4__ {struct libusb20_device* os_priv; } ;
typedef TYPE_1__ libusb_device ;


 int libusb20_dev_get_config_index (struct libusb20_device*) ;
 int libusb_get_config_descriptor (TYPE_1__*,int ,struct libusb_config_descriptor**) ;

int
libusb_get_active_config_descriptor(libusb_device *dev,
    struct libusb_config_descriptor **config)
{
 struct libusb20_device *pdev;
 uint8_t config_index;

 pdev = dev->os_priv;
 config_index = libusb20_dev_get_config_index(pdev);

 return (libusb_get_config_descriptor(dev, config_index, config));
}
