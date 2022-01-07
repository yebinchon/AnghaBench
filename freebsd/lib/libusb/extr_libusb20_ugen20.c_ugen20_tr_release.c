
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fs_uninit {int dummy; } ;
struct libusb20_device {scalar_t__ nTransfer; int file; int * privBeData; } ;
typedef int fs_uninit ;


 int IOUSB (int ) ;
 int USB_FS_UNINIT ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_uninit*) ;
 int memset (struct usb_fs_uninit*,int ,int) ;

__attribute__((used)) static void
ugen20_tr_release(struct libusb20_device *pdev)
{
 struct usb_fs_uninit fs_uninit;

 if (pdev->nTransfer == 0) {
  return;
 }

 if (pdev->privBeData != ((void*)0)) {
  memset(&fs_uninit, 0, sizeof(fs_uninit));
  if (ioctl(pdev->file, IOUSB(USB_FS_UNINIT), &fs_uninit)) {

  }
 }
 return;
}
