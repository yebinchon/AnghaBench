
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_toshiba_softc {int video_handle; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;





 int HCI_GET ;
 int HCI_SET ;
 int hci_force_fan (int ,int ,int*) ;
 int hci_lcd_backlight (int ,int ,int*) ;
 int hci_lcd_brightness (int ,int ,int*) ;
 int hci_video_output (int ,int ,int*) ;
 int toshiba ;

__attribute__((used)) static void
hci_key_action(struct acpi_toshiba_softc *sc, ACPI_HANDLE h, UINT32 key)
{
 UINT32 arg;

 ACPI_SERIAL_ASSERT(toshiba);
 switch (key) {
 case 130:

  hci_lcd_brightness(h, HCI_GET, &arg);
  if (arg-- == 0)
   arg = 0;
  else
   hci_lcd_brightness(h, HCI_SET, &arg);
  break;
 case 129:

  hci_lcd_brightness(h, HCI_GET, &arg);
  if (arg++ == 7)
   arg = 7;
  else
   hci_lcd_brightness(h, HCI_SET, &arg);
  break;
 case 131:

  hci_video_output(h, HCI_GET, &arg);
  arg = (arg + 1) % 7;
  hci_video_output(sc->video_handle, HCI_SET, &arg);
  break;
 case 128:

  hci_lcd_backlight(h, HCI_GET, &arg);
  arg = (arg != 0) ? 0 : 1;
  hci_lcd_backlight(h, HCI_SET, &arg);
  break;
 case 132:

  hci_force_fan(h, HCI_GET, &arg);
  arg = (arg != 0) ? 0 : 1;
  hci_force_fan(h, HCI_SET, &arg);
  break;
 }
}
