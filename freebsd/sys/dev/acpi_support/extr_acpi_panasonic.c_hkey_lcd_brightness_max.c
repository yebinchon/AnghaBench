
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EPERM ;

 int HKEY_REG_LCD_BRIGHTNESS_MAX_AC ;
 int HKEY_REG_LCD_BRIGHTNESS_MAX_DC ;

 scalar_t__ POWER_PROFILE_PERFORMANCE ;
 int acpi_panasonic_sinf (int ,int) ;
 int panasonic ;
 scalar_t__ power_profile_get_state () ;

__attribute__((used)) static int
hkey_lcd_brightness_max(ACPI_HANDLE h, int op, UINT32 *val)
{
 int reg;

 ACPI_SERIAL_ASSERT(panasonic);
 reg = (power_profile_get_state() == POWER_PROFILE_PERFORMANCE) ?
     HKEY_REG_LCD_BRIGHTNESS_MAX_AC : HKEY_REG_LCD_BRIGHTNESS_MAX_DC;

 switch (op) {
 case 128:
  return (EPERM);
  break;
 case 129:
  *val = acpi_panasonic_sinf(h, reg);
  break;
 }

 return (0);
}
