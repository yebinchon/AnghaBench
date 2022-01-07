
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bLength; scalar_t__ bNumConfigurations; int iSerialNumber; int iProduct; int iManufacturer; int bcdDevice; int idProduct; int idVendor; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; } ;
struct usb_device {struct libusb20_device* dev; int devnum; TYPE_1__ descriptor; int filename; TYPE_2__* bus; } ;
struct libusb20_device {struct usb_device* privLuData; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {scalar_t__ bNumConfigurations; int iSerialNumber; int iProduct; int iManufacturer; int bcdDevice; int idProduct; int idVendor; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; } ;
struct TYPE_4__ {int devices; } ;


 int LIST_ADD (int ,struct usb_device*) ;
 int LIST_DEL (int ,struct usb_device*) ;
 scalar_t__ USB_MAXCONFIG ;
 int free (struct usb_device*) ;
 int * libusb20_be_alloc_default () ;
 int libusb20_be_dequeue_device (int *,struct libusb20_device*) ;
 struct libusb20_device* libusb20_be_device_foreach (int *,struct libusb20_device*) ;
 int libusb20_be_free (int *) ;
 int libusb20_dev_close (struct libusb20_device*) ;
 int libusb20_dev_free (struct libusb20_device*) ;
 int libusb20_dev_get_address (struct libusb20_device*) ;
 int libusb20_dev_get_bus_number (struct libusb20_device*) ;
 struct LIBUSB20_DEVICE_DESC_DECODED* libusb20_dev_get_device_desc (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int ) ;
 struct usb_device* malloc (int) ;
 int memset (struct usb_device*,int ,int) ;
 int snprintf (int ,int,char*,int,int) ;
 int * usb_backend ;
 int usb_fetch_and_parse_descriptors (void*) ;
 TYPE_2__ usb_global_bus ;

int
usb_find_devices(void)
{
 struct libusb20_device *pdev;
 struct usb_device *udev;
 struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;
 int devnum;
 int err;




 while ((pdev = libusb20_be_device_foreach(usb_backend, ((void*)0)))) {
  udev = pdev->privLuData;
  libusb20_be_dequeue_device(usb_backend, pdev);
  libusb20_dev_free(pdev);
  if (udev != ((void*)0)) {
   LIST_DEL(usb_global_bus.devices, udev);
   free(udev);
  }
 }



 libusb20_be_free(usb_backend);


 usb_backend = libusb20_be_alloc_default();
 if (usb_backend == ((void*)0)) {
  return (-1);
 }


 devnum = 1;
 pdev = ((void*)0);
 while ((pdev = libusb20_be_device_foreach(usb_backend, pdev))) {
  udev = malloc(sizeof(*udev));
  if (udev == ((void*)0))
   break;

  memset(udev, 0, sizeof(*udev));

  udev->bus = &usb_global_bus;

  snprintf(udev->filename, sizeof(udev->filename),
      "/dev/ugen%u.%u",
      libusb20_dev_get_bus_number(pdev),
      libusb20_dev_get_address(pdev));

  ddesc = libusb20_dev_get_device_desc(pdev);

  udev->descriptor.bLength = sizeof(udev->descriptor);
  udev->descriptor.bDescriptorType = ddesc->bDescriptorType;
  udev->descriptor.bcdUSB = ddesc->bcdUSB;
  udev->descriptor.bDeviceClass = ddesc->bDeviceClass;
  udev->descriptor.bDeviceSubClass = ddesc->bDeviceSubClass;
  udev->descriptor.bDeviceProtocol = ddesc->bDeviceProtocol;
  udev->descriptor.bMaxPacketSize0 = ddesc->bMaxPacketSize0;
  udev->descriptor.idVendor = ddesc->idVendor;
  udev->descriptor.idProduct = ddesc->idProduct;
  udev->descriptor.bcdDevice = ddesc->bcdDevice;
  udev->descriptor.iManufacturer = ddesc->iManufacturer;
  udev->descriptor.iProduct = ddesc->iProduct;
  udev->descriptor.iSerialNumber = ddesc->iSerialNumber;
  udev->descriptor.bNumConfigurations =
      ddesc->bNumConfigurations;
  if (udev->descriptor.bNumConfigurations > USB_MAXCONFIG) {

   udev->descriptor.bNumConfigurations = USB_MAXCONFIG;
  }
  udev->devnum = devnum++;

  udev->dev = pdev;
  pdev->privLuData = udev;

  err = libusb20_dev_open(pdev, 0);
  if (err == 0) {

   usb_fetch_and_parse_descriptors((void *)pdev);
   libusb20_dev_close(pdev);
  }
  LIST_ADD(usb_global_bus.devices, udev);
 }

 return (devnum - 1);
}
