
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct libusb20_device {TYPE_1__* methods; int is_opened; } ;
struct TYPE_2__ {int (* get_config_index ) (struct libusb20_device*,int*) ;} ;


 scalar_t__ libusb20_dev_close (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int ) ;
 int stub1 (struct libusb20_device*,int*) ;

uint8_t
libusb20_dev_get_config_index(struct libusb20_device *pdev)
{
 int error;
 uint8_t cfg_index;
 uint8_t do_close;

 if (!pdev->is_opened) {
  error = libusb20_dev_open(pdev, 0);
  if (error == 0) {
   do_close = 1;
  } else {
   do_close = 0;
  }
 } else {
  do_close = 0;
 }

 error = pdev->methods->get_config_index(pdev, &cfg_index);
 if (error)
  cfg_index = 0xFF;
 if (do_close) {
  if (libusb20_dev_close(pdev)) {

  }
 }
 return (cfg_index);
}
