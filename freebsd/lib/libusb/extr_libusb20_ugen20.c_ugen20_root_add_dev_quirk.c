
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gen_quirk {int quirkname; int bcdDeviceHigh; int bcdDeviceLow; int pid; int vid; } ;
struct libusb20_quirk {int quirkname; int bcdDeviceHigh; int bcdDeviceLow; int pid; int vid; } ;
struct libusb20_backend {int dummy; } ;
typedef int q ;


 scalar_t__ ENOMEM ;
 int IOUSB (int ) ;
 int LIBUSB20_ERROR_NO_MEM ;
 int USB_DEV_QUIRK_ADD ;
 scalar_t__ errno ;
 int memset (struct usb_gen_quirk*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int ugen20_be_ioctl (int ,struct usb_gen_quirk*) ;

__attribute__((used)) static int
ugen20_root_add_dev_quirk(struct libusb20_backend *pbe,
    struct libusb20_quirk *pq)
{
 struct usb_gen_quirk q;
 int error;

 memset(&q, 0, sizeof(q));

 q.vid = pq->vid;
 q.pid = pq->pid;
 q.bcdDeviceLow = pq->bcdDeviceLow;
 q.bcdDeviceHigh = pq->bcdDeviceHigh;
 strlcpy(q.quirkname, pq->quirkname, sizeof(q.quirkname));

 error = ugen20_be_ioctl(IOUSB(USB_DEV_QUIRK_ADD), &q);
 if (error) {
  if (errno == ENOMEM) {
   return (LIBUSB20_ERROR_NO_MEM);
  }
 }
 return (error);
}
