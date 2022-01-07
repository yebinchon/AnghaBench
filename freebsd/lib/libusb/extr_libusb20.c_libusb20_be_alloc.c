
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_backend_methods {int (* init_backend ) (struct libusb20_backend*) ;} ;
struct libusb20_backend {struct libusb20_backend_methods const* methods; int usb_devs; } ;


 int TAILQ_INIT (int *) ;
 struct libusb20_backend* malloc (int) ;
 int memset (struct libusb20_backend*,int ,int) ;
 int stub1 (struct libusb20_backend*) ;

struct libusb20_backend *
libusb20_be_alloc(const struct libusb20_backend_methods *methods)
{
 struct libusb20_backend *pbe;

 pbe = malloc(sizeof(*pbe));
 if (pbe == ((void*)0)) {
  return (((void*)0));
 }
 memset(pbe, 0, sizeof(*pbe));

 TAILQ_INIT(&(pbe->usb_devs));

 pbe->methods = methods;


 if (pbe->methods->init_backend) {
  pbe->methods->init_backend(pbe);
 }
 return (pbe);
}
