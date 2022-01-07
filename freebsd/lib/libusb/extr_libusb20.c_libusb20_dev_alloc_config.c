
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int bNumConfigurations; } ;
struct libusb20_device {TYPE_1__* methods; int is_opened; TYPE_2__ ddesc; } ;
struct libusb20_config {int dummy; } ;
struct TYPE_3__ {int (* get_config_desc_full ) (struct libusb20_device*,int**,int *,int) ;} ;


 int free (int*) ;
 int libusb20_dev_close (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int ) ;
 struct libusb20_config* libusb20_parse_config_desc (int*) ;
 int stub1 (struct libusb20_device*,int**,int *,int) ;

struct libusb20_config *
libusb20_dev_alloc_config(struct libusb20_device *pdev, uint8_t configIndex)
{
 struct libusb20_config *retval = ((void*)0);
 uint8_t *ptr;
 uint16_t len;
 uint8_t do_close;
 int error;






 if (configIndex >= pdev->ddesc.bNumConfigurations)
  return (((void*)0));

 if (!pdev->is_opened) {
  error = libusb20_dev_open(pdev, 0);
  if (error) {
   return (((void*)0));
  }
  do_close = 1;
 } else {
  do_close = 0;
 }
 error = pdev->methods->get_config_desc_full(pdev,
     &ptr, &len, configIndex);

 if (error) {
  goto done;
 }

 retval = libusb20_parse_config_desc(ptr);


 free(ptr);

done:
 if (do_close) {
  error = libusb20_dev_close(pdev);
 }
 return (retval);
}
