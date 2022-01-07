
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int dummy; } ;
struct acpi_panasonic_softc {int dev; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int HKEY_GET ;
 int HKEY_LCD_BRIGHTNESS_DIV ;
 int HKEY_SET ;
 struct acpi_softc* acpi_device_get_parent_softc (int ) ;
 int acpi_event_sleep_button_sleep (struct acpi_softc*) ;
 int hkey_lcd_brightness (int ,int ,int*) ;
 int hkey_lcd_brightness_max (int ,int ,int*) ;
 int hkey_lcd_brightness_min (int ,int ,int*) ;
 int hkey_sound_mute (int ,int ,int*) ;
 int panasonic ;

__attribute__((used)) static void
acpi_panasonic_hkey_action(struct acpi_panasonic_softc *sc, ACPI_HANDLE h,
    UINT32 key)
{
 struct acpi_softc *acpi_sc;
 int arg, max, min;

 acpi_sc = acpi_device_get_parent_softc(sc->dev);

 ACPI_SERIAL_ASSERT(panasonic);
 switch (key) {
 case 1:

  hkey_lcd_brightness_max(h, HKEY_GET, &max);
  hkey_lcd_brightness_min(h, HKEY_GET, &min);
  hkey_lcd_brightness(h, HKEY_GET, &arg);
  arg -= max / HKEY_LCD_BRIGHTNESS_DIV;
  if (arg < min)
   arg = min;
  else if (arg > max)
   arg = max;
  hkey_lcd_brightness(h, HKEY_SET, &arg);
  break;
 case 2:

  hkey_lcd_brightness_max(h, HKEY_GET, &max);
  hkey_lcd_brightness_min(h, HKEY_GET, &min);
  hkey_lcd_brightness(h, HKEY_GET, &arg);
  arg += max / HKEY_LCD_BRIGHTNESS_DIV;
  if (arg < min)
   arg = min;
  else if (arg > max)
   arg = max;
  hkey_lcd_brightness(h, HKEY_SET, &arg);
  break;
 case 4:

  hkey_sound_mute(h, HKEY_GET, &arg);
  if (arg)
   arg = 0;
  else
   arg = 1;
  hkey_sound_mute(h, HKEY_SET, &arg);
  break;
 case 7:

  acpi_event_sleep_button_sleep(acpi_sc);
  break;
 }
}
