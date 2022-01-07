
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_config_descriptor {int dummy; } ;


 int free (struct libusb_config_descriptor*) ;

void
libusb_free_config_descriptor(struct libusb_config_descriptor *config)
{
 free(config);
}
