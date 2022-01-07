
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int ugd ;
struct usb_gen_descriptor {void* ugd_iface_index; void* ugd_maxlen; int ugd_data; } ;
struct libusb20_device {int file; } ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_INVALID_PARAM ;
 int USB_GET_IFACE_DRIVER ;
 scalar_t__ ioctl (int ,int ,struct usb_gen_descriptor*) ;
 int libusb20_pass_ptr (char*) ;
 int memset (struct usb_gen_descriptor*,int ,int) ;

__attribute__((used)) static int
ugen20_dev_get_iface_desc(struct libusb20_device *pdev,
    uint8_t iface_index, char *buf, uint8_t len)
{
 struct usb_gen_descriptor ugd;

 memset(&ugd, 0, sizeof(ugd));

 ugd.ugd_data = libusb20_pass_ptr(buf);
 ugd.ugd_maxlen = len;
 ugd.ugd_iface_index = iface_index;

 if (ioctl(pdev->file, IOUSB(USB_GET_IFACE_DRIVER), &ugd)) {
  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 return (0);
}
