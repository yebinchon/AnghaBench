
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct acpi_toshiba_softc {int dev; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int HCI_GET ;
 int HCI_REG_SYSTEM_EVENT ;
 int acpi_UserNotify (char*,int ,int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ hci_call (int ,int ,int ,int*) ;
 int hci_key_action (struct acpi_toshiba_softc*,int ,int) ;
 int toshiba ;

__attribute__((used)) static void
acpi_toshiba_notify(ACPI_HANDLE h, UINT32 notify, void *context)
{
 struct acpi_toshiba_softc *sc;
 UINT32 key;

 sc = (struct acpi_toshiba_softc *)context;

 if (notify == 0x80) {
  ACPI_SERIAL_BEGIN(toshiba);
  while (hci_call(h, HCI_GET, HCI_REG_SYSTEM_EVENT, &key) == 0) {
   hci_key_action(sc, h, key);
   acpi_UserNotify("TOSHIBA", h, (uint8_t)key);
  }
  ACPI_SERIAL_END(toshiba);
 } else
  device_printf(sc->dev, "unknown notify: 0x%x\n", notify);
}
