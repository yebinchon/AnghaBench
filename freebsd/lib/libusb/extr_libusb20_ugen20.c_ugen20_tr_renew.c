
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct usb_fs_init {int ep_index_max; int pEndpoints; } ;
struct usb_fs_endpoint {int ep_index_max; int pEndpoints; } ;
struct libusb20_device {int nTransfer; int file; struct usb_fs_init* privBeData; } ;
typedef int fs_init ;


 int IOUSB (int ) ;
 int LIBUSB20_ERROR_NO_MEM ;
 int LIBUSB20_ERROR_OTHER ;
 int USB_FS_INIT ;
 scalar_t__ ioctl (int ,int ,struct usb_fs_init*) ;
 int libusb20_pass_ptr (struct usb_fs_init*) ;
 struct usb_fs_init* malloc (int) ;
 int memset (struct usb_fs_init*,int ,int) ;

__attribute__((used)) static int
ugen20_tr_renew(struct libusb20_device *pdev)
{
 struct usb_fs_init fs_init;
 struct usb_fs_endpoint *pfse;
 int error;
 uint32_t size;
 uint16_t nMaxTransfer;

 nMaxTransfer = pdev->nTransfer;
 error = 0;

 if (nMaxTransfer == 0) {
  goto done;
 }
 size = nMaxTransfer * sizeof(*pfse);

 if (pdev->privBeData == ((void*)0)) {
  pfse = malloc(size);
  if (pfse == ((void*)0)) {
   error = LIBUSB20_ERROR_NO_MEM;
   goto done;
  }
  pdev->privBeData = pfse;
 }

 memset(pdev->privBeData, 0, size);

 memset(&fs_init, 0, sizeof(fs_init));

 fs_init.pEndpoints = libusb20_pass_ptr(pdev->privBeData);
 fs_init.ep_index_max = nMaxTransfer;

 if (ioctl(pdev->file, IOUSB(USB_FS_INIT), &fs_init)) {
  error = LIBUSB20_ERROR_OTHER;
  goto done;
 }
done:
 return (error);
}
