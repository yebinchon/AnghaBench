
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fs_uninit {int dummy; } ;
struct libusb20_device {int file; int file_ctrl; int * privBeData; scalar_t__ nTransfer; } ;
typedef int fs_uninit ;


 int IOUSB (int ) ;
 int USB_FS_UNINIT ;
 int close (int) ;
 int free (int *) ;
 scalar_t__ ioctl (int,int ,struct usb_fs_uninit*) ;
 int memset (struct usb_fs_uninit*,int ,int) ;

__attribute__((used)) static int
ugen20_close_device(struct libusb20_device *pdev)
{
 struct usb_fs_uninit fs_uninit;

 if (pdev->privBeData) {
  memset(&fs_uninit, 0, sizeof(fs_uninit));
  if (ioctl(pdev->file, IOUSB(USB_FS_UNINIT), &fs_uninit)) {

  }
  free(pdev->privBeData);
 }
 pdev->nTransfer = 0;
 pdev->privBeData = ((void*)0);
 close(pdev->file);
 close(pdev->file_ctrl);
 pdev->file = -1;
 pdev->file_ctrl = -1;
 return (0);
}
