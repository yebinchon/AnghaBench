
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DeviceClass; int DeviceSubClass; int DeviceProtocol; } ;
typedef TYPE_1__ USB_CLASS_DEVICE_PATH ;
typedef int UINTN ;
struct TYPE_6__ {scalar_t__ (* LocateHandle ) (int ,int *,int ,int*,int *) ;} ;
struct TYPE_5__ {int HID; } ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_2__ ACPI_HID_DEVICE_PATH ;


 scalar_t__ ACPI_DEVICE_PATH ;
 scalar_t__ ACPI_DP ;
 scalar_t__ ACPI_EXTENDED_DP ;
 TYPE_3__* BS ;
 int ByProtocol ;
 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_ERROR (scalar_t__) ;
 int EISA_ID_TO_NUM (int) ;
 int IsDevicePathEnd (int *) ;
 scalar_t__ MESSAGING_DEVICE_PATH ;
 scalar_t__ MSG_USB_CLASS_DP ;
 int * NextDevicePathNode (int *) ;
 scalar_t__ OpenProtocolByHandle (int ,int *,void**) ;
 int PNP_EISA_ID_CONST ;
 int devid ;
 int free (int *) ;
 int inputid ;
 scalar_t__ malloc (int) ;
 scalar_t__ stub1 (int ,int *,int ,int*,int *) ;
 scalar_t__ stub2 (int ,int *,int ,int*,int *) ;

__attribute__((used)) static bool
has_keyboard(void)
{
 EFI_STATUS status;
 EFI_DEVICE_PATH *path;
 EFI_HANDLE *hin, *hin_end, *walker;
 UINTN sz;
 bool retval = 0;





 sz = 0;
 hin = ((void*)0);
 status = BS->LocateHandle(ByProtocol, &inputid, 0, &sz, 0);
 if (status == EFI_BUFFER_TOO_SMALL) {
  hin = (EFI_HANDLE *)malloc(sz);
  status = BS->LocateHandle(ByProtocol, &inputid, 0, &sz,
      hin);
  if (EFI_ERROR(status))
   free(hin);
 }
 if (EFI_ERROR(status))
  return retval;







 hin_end = &hin[sz / sizeof(*hin)];
 for (walker = hin; walker < hin_end; walker++) {
  status = OpenProtocolByHandle(*walker, &devid, (void **)&path);
  if (EFI_ERROR(status))
   continue;

  while (!IsDevicePathEnd(path)) {







   if (DevicePathType(path) == ACPI_DEVICE_PATH &&
       (DevicePathSubType(path) == ACPI_DP ||
    DevicePathSubType(path) == ACPI_EXTENDED_DP)) {
    ACPI_HID_DEVICE_PATH *acpi;

    acpi = (ACPI_HID_DEVICE_PATH *)(void *)path;
    if ((EISA_ID_TO_NUM(acpi->HID) & 0xff00) == 0x300 &&
        (acpi->HID & 0xffff) == PNP_EISA_ID_CONST) {
     retval = 1;
     goto out;
    }





   } else if (DevicePathType(path) == MESSAGING_DEVICE_PATH &&
       DevicePathSubType(path) == MSG_USB_CLASS_DP) {
    USB_CLASS_DEVICE_PATH *usb;

    usb = (USB_CLASS_DEVICE_PATH *)(void *)path;
    if (usb->DeviceClass == 3 &&
        usb->DeviceSubClass == 1 &&
        usb->DeviceProtocol == 1) {
     retval = 1;
     goto out;
    }
   }
   path = NextDevicePathNode(path);
  }
 }
out:
 free(hin);
 return retval;
}
