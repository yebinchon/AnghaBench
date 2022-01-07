
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
struct TYPE_2__ {int bConfigurationValue; } ;
struct libusb20_config {TYPE_1__ desc; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_NO_MEM ;
 int free (struct libusb20_config*) ;
 struct libusb20_config* libusb20_dev_alloc_config (struct libusb20_device*,int ) ;
 int libusb20_dev_get_config_index (struct libusb20_device*) ;

int
libusb_get_configuration(struct libusb20_device *pdev, int *config)
{
 struct libusb20_config *pconf;

 if (pdev == ((void*)0) || config == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);

 pconf = libusb20_dev_alloc_config(pdev, libusb20_dev_get_config_index(pdev));
 if (pconf == ((void*)0))
  return (LIBUSB_ERROR_NO_MEM);

 *config = pconf->desc.bConfigurationValue;

 free(pconf);

 return (0);
}
