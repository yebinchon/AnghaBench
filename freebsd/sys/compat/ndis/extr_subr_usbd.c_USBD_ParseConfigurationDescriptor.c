
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_interface_descriptor_t ;
typedef int usb_config_descriptor_t ;
typedef int uint8_t ;


 int * USBD_ParseConfigurationDescriptorEx (int *,int *,int ,int ,int,int,int) ;

__attribute__((used)) static usb_interface_descriptor_t *
USBD_ParseConfigurationDescriptor(usb_config_descriptor_t *conf,
 uint8_t intfnum, uint8_t altset)
{

 return USBD_ParseConfigurationDescriptorEx(conf, conf, intfnum, altset,
     -1, -1, -1);
}
