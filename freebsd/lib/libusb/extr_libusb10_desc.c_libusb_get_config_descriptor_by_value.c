
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct libusb_config_descriptor {scalar_t__ bConfigurationValue; } ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int bNumConfigurations; } ;
struct TYPE_4__ {struct libusb20_device* os_priv; } ;
typedef TYPE_1__ libusb_device ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NOT_FOUND ;
 struct LIBUSB20_DEVICE_DESC_DECODED* libusb20_dev_get_device_desc (struct libusb20_device*) ;
 int libusb_free_config_descriptor (struct libusb_config_descriptor*) ;
 int libusb_get_config_descriptor (TYPE_1__*,int,struct libusb_config_descriptor**) ;

int
libusb_get_config_descriptor_by_value(libusb_device *dev,
    uint8_t bConfigurationValue, struct libusb_config_descriptor **config)
{
 struct LIBUSB20_DEVICE_DESC_DECODED *pdesc;
 struct libusb20_device *pdev;
 int i;
 int err;

 if (dev == ((void*)0) || config == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 pdev = dev->os_priv;
 pdesc = libusb20_dev_get_device_desc(pdev);

 for (i = 0; i < pdesc->bNumConfigurations; i++) {
  err = libusb_get_config_descriptor(dev, i, config);
  if (err)
   return (err);

  if ((*config)->bConfigurationValue == bConfigurationValue)
   return (0);

  libusb_free_config_descriptor(*config);
 }

 *config = ((void*)0);

 return (LIBUSB_ERROR_NOT_FOUND);
}
