
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ HID; } ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_1__ ACPI_HID_DEVICE_PATH ;


 scalar_t__ ACPI_DEVICE_PATH ;
 scalar_t__ ACPI_DP ;
 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 scalar_t__ EISA_PNP_ID (int ) ;
 int PNP0604 ;
 int PNP0700 ;
 int PNP0701 ;

__attribute__((used)) static ACPI_HID_DEVICE_PATH *
efipart_floppy(EFI_DEVICE_PATH *node)
{
 ACPI_HID_DEVICE_PATH *acpi;

 if (DevicePathType(node) == ACPI_DEVICE_PATH &&
     DevicePathSubType(node) == ACPI_DP) {
  acpi = (ACPI_HID_DEVICE_PATH *) node;
  if (acpi->HID == EISA_PNP_ID(PNP0604) ||
      acpi->HID == EISA_PNP_ID(PNP0700) ||
      acpi->HID == EISA_PNP_ID(PNP0701)) {
   return (acpi);
  }
 }
 return (((void*)0));
}
