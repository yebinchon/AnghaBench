
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct libusb_device_descriptor {int bNumConfigurations; int iSerialNumber; int iProduct; int iManufacturer; int bcdDevice; int idProduct; int idVendor; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; int bLength; } ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int bNumConfigurations; int iSerialNumber; int iProduct; int iManufacturer; int bcdDevice; int idProduct; int idVendor; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; int bLength; } ;
struct TYPE_3__ {struct libusb20_device* os_priv; } ;
typedef TYPE_1__ libusb_device ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 struct LIBUSB20_DEVICE_DESC_DECODED* libusb20_dev_get_device_desc (struct libusb20_device*) ;

int
libusb_get_device_descriptor(libusb_device *dev,
    struct libusb_device_descriptor *desc)
{
 struct LIBUSB20_DEVICE_DESC_DECODED *pdesc;
 struct libusb20_device *pdev;

 if ((dev == ((void*)0)) || (desc == ((void*)0)))
  return (LIBUSB_ERROR_INVALID_PARAM);

 pdev = dev->os_priv;
 pdesc = libusb20_dev_get_device_desc(pdev);

 desc->bLength = pdesc->bLength;
 desc->bDescriptorType = pdesc->bDescriptorType;
 desc->bcdUSB = pdesc->bcdUSB;
 desc->bDeviceClass = pdesc->bDeviceClass;
 desc->bDeviceSubClass = pdesc->bDeviceSubClass;
 desc->bDeviceProtocol = pdesc->bDeviceProtocol;
 desc->bMaxPacketSize0 = pdesc->bMaxPacketSize0;
 desc->idVendor = pdesc->idVendor;
 desc->idProduct = pdesc->idProduct;
 desc->bcdDevice = pdesc->bcdDevice;
 desc->iManufacturer = pdesc->iManufacturer;
 desc->iProduct = pdesc->iProduct;
 desc->iSerialNumber = pdesc->iSerialNumber;
 desc->bNumConfigurations = pdesc->bNumConfigurations;

 return (0);
}
