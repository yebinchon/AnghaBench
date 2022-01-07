
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_gen_quirk {int quirkname; int index; } ;
struct libusb20_quirk {int quirkname; } ;
struct libusb20_backend {int dummy; } ;
typedef int q ;


 scalar_t__ EINVAL ;
 int IOUSB (int ) ;
 int LIBUSB20_ERROR_NOT_FOUND ;
 int USB_QUIRK_NAME_GET ;
 scalar_t__ errno ;
 int memset (struct usb_gen_quirk*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int ugen20_be_ioctl (int ,struct usb_gen_quirk*) ;

__attribute__((used)) static int
ugen20_root_get_quirk_name(struct libusb20_backend *pbe, uint16_t quirk_index,
    struct libusb20_quirk *pq)
{
 struct usb_gen_quirk q;
 int error;

 memset(&q, 0, sizeof(q));

 q.index = quirk_index;

 error = ugen20_be_ioctl(IOUSB(USB_QUIRK_NAME_GET), &q);

 if (error) {
  if (errno == EINVAL) {
   return (LIBUSB20_ERROR_NOT_FOUND);
  }
 } else {
  strlcpy(pq->quirkname, q.quirkname, sizeof(pq->quirkname));
 }
 return (error);
}
