
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct acpi_panasonic_softc {int dev; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int acpi_UserNotify (char*,int ,int ) ;
 int acpi_panasonic_hkey_action (struct acpi_panasonic_softc*,int ,int) ;
 int acpi_panasonic_hkey_event (struct acpi_panasonic_softc*,int ,int*) ;
 int bootverbose ;
 int device_printf (int ,char*,int) ;
 int panasonic ;

__attribute__((used)) static void
acpi_panasonic_notify(ACPI_HANDLE h, UINT32 notify, void *context)
{
 struct acpi_panasonic_softc *sc;
 UINT32 key = 0;

 sc = (struct acpi_panasonic_softc *)context;

 switch (notify) {
 case 0x80:
  ACPI_SERIAL_BEGIN(panasonic);
  if (acpi_panasonic_hkey_event(sc, h, &key) == 0) {
   acpi_panasonic_hkey_action(sc, h, key);
   acpi_UserNotify("Panasonic", h, (uint8_t)key);
  }
  ACPI_SERIAL_END(panasonic);
  break;
 case 0x81:
  if (!bootverbose)
   break;

 default:
  device_printf(sc->dev, "unknown notify: %#x\n", notify);
  break;
 }
}
