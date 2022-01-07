
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int HID; int UID; } ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_1__ ACPI_HID_DEVICE_PATH ;




 int DevicePathSubType (int *) ;
 int EISA_ID_TO_NUM (int) ;
 int PNP_EISA_ID_CONST ;
 int PNP_EISA_ID_MASK ;
 int asprintf (char**,char*,int,...) ;
 char* efi_make_tail (char*) ;
 int free (char*) ;

__attribute__((used)) static char *
efi_acpi_dev_path(EFI_DEVICE_PATH *node, char *suffix)
{
 uint8_t subtype = DevicePathSubType(node);
 ACPI_HID_DEVICE_PATH *acpi = (ACPI_HID_DEVICE_PATH *)node;
 char *name, *tail;

 tail = efi_make_tail(suffix);
 switch (subtype) {
 case 129:
  if ((acpi->HID & PNP_EISA_ID_MASK) == PNP_EISA_ID_CONST) {
   switch (EISA_ID_TO_NUM (acpi->HID)) {
   case 0x0a03:
    if (asprintf(&name, "PciRoot(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   case 0x0a08:
    if (asprintf(&name, "PcieRoot(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   case 0x0604:
    if (asprintf(&name, "Floppy(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   case 0x0301:
    if (asprintf(&name, "Keyboard(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   case 0x0501:
    if (asprintf(&name, "Serial(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   case 0x0401:
    if (asprintf(&name, "ParallelPort(%x)%s",
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   default:
    if (asprintf(&name, "Acpi(PNP%04x,%x)%s",
        EISA_ID_TO_NUM(acpi->HID),
        acpi->UID, tail) < 0)
     name = ((void*)0);
    break;
   }
  } else {
   if (asprintf(&name, "Acpi(%08x,%x)%s",
       acpi->HID, acpi->UID, tail) < 0)
    name = ((void*)0);
  }
  break;
 case 128:
 default:
  if (asprintf(&name, "UnknownACPI(%x)%s", subtype, tail) < 0)
   name = ((void*)0);
  break;
 }
 free(tail);
 return (name);
}
