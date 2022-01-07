
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uvi_supported_vers; int uvi_usbdi_vers; } ;
typedef TYPE_1__ usbd_version_info ;


 int USBDI_VERSION ;
 int USB_VER_2_0 ;

__attribute__((used)) static void
USBD_GetUSBDIVersion(usbd_version_info *ui)
{



 ui->uvi_usbdi_vers = USBDI_VERSION;
 ui->uvi_supported_vers = USB_VER_2_0;
}
