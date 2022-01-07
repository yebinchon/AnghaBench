
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libusb20_device {int dummy; } ;
struct libusb20_backend {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* exit_backend ) (struct libusb20_backend*) ;} ;


 int free (struct libusb20_backend*) ;
 int libusb20_be_dequeue_device (struct libusb20_backend*,struct libusb20_device*) ;
 struct libusb20_device* libusb20_be_device_foreach (struct libusb20_backend*,int *) ;
 int libusb20_dev_free (struct libusb20_device*) ;
 int stub1 (struct libusb20_backend*) ;

void
libusb20_be_free(struct libusb20_backend *pbe)
{
 struct libusb20_device *pdev;

 if (pbe == ((void*)0)) {

  return;
 }
 while ((pdev = libusb20_be_device_foreach(pbe, ((void*)0)))) {
  libusb20_be_dequeue_device(pbe, pdev);
  libusb20_dev_free(pdev);
 }
 if (pbe->methods->exit_backend) {
  pbe->methods->exit_backend(pbe);
 }

 free(pbe);
}
