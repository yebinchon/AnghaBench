
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int BaudRate; } ;
typedef TYPE_1__ UART_DEVICE_PATH ;
struct TYPE_4__ {int UID; int HID; } ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_2__ ACPI_HID_DEVICE_PATH ;


 scalar_t__ ACPI_ADR_DP ;
 scalar_t__ ACPI_DEVICE_PATH ;
 scalar_t__ ACPI_DP ;
 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 int EFI_SUCCESS ;
 int EISA_ID_TO_NUM (int ) ;
 scalar_t__ HARDWARE_DEVICE_PATH ;
 scalar_t__ HW_PCI_DP ;
 scalar_t__ MESSAGING_DEVICE_PATH ;
 scalar_t__ MSG_UART_DP ;
 int * NextDevicePathNode (int *) ;
 int RB_MULTIPLE ;
 int RB_SERIAL ;
 int efi_global_getenv (char*,char*,size_t*) ;
 int setenv_int (char*,int ) ;

int
parse_uefi_con_out(void)
{
 int how, rv;
 int vid_seen = 0, com_seen = 0, seen = 0;
 size_t sz;
 char buf[4096], *ep;
 EFI_DEVICE_PATH *node;
 ACPI_HID_DEVICE_PATH *acpi;
 UART_DEVICE_PATH *uart;
 bool pci_pending;

 how = 0;
 sz = sizeof(buf);
 rv = efi_global_getenv("ConOut", buf, &sz);
 if (rv != EFI_SUCCESS) {

  how = RB_SERIAL;
  goto out;
 }
 ep = buf + sz;
 node = (EFI_DEVICE_PATH *)buf;
 while ((char *)node < ep) {
  pci_pending = 0;
  if (DevicePathType(node) == ACPI_DEVICE_PATH &&
      DevicePathSubType(node) == ACPI_DP) {

   acpi = (void *)node;
   if (EISA_ID_TO_NUM(acpi->HID) == 0x501) {
    setenv_int("efi_8250_uid", acpi->UID);
    com_seen = ++seen;
   }
  } else if (DevicePathType(node) == MESSAGING_DEVICE_PATH &&
      DevicePathSubType(node) == MSG_UART_DP) {

   uart = (void *)node;
   setenv_int("efi_com_speed", uart->BaudRate);
  } else if (DevicePathType(node) == ACPI_DEVICE_PATH &&
      DevicePathSubType(node) == ACPI_ADR_DP) {

   vid_seen = ++seen;
  } else if (DevicePathType(node) == HARDWARE_DEVICE_PATH &&
      DevicePathSubType(node) == HW_PCI_DP) {
   pci_pending = 1;
  }
  node = NextDevicePathNode(node);
 }
 if (pci_pending && vid_seen == 0)
  vid_seen = ++seen;
 how = 0;
 if (vid_seen && com_seen) {
  how |= RB_MULTIPLE;
  if (com_seen < vid_seen)
   how |= RB_SERIAL;
 } else if (com_seen)
  how |= RB_SERIAL;
out:
 return (how);
}
