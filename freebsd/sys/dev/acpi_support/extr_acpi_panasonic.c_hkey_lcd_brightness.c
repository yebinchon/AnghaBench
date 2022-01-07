
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;

 int HKEY_REG_LCD_BRIGHTNESS_AC ;
 int HKEY_REG_LCD_BRIGHTNESS_DC ;

 scalar_t__ POWER_PROFILE_PERFORMANCE ;
 int acpi_panasonic_sinf (int ,int) ;
 int acpi_panasonic_sset (int ,int,int ) ;
 int hkey_lcd_brightness_max (int ,int,int *) ;
 int hkey_lcd_brightness_min (int ,int,int *) ;
 int panasonic ;
 scalar_t__ power_profile_get_state () ;

__attribute__((used)) static int
hkey_lcd_brightness(ACPI_HANDLE h, int op, UINT32 *val)
{
 int reg;
 UINT32 max, min;

 reg = (power_profile_get_state() == POWER_PROFILE_PERFORMANCE) ?
     HKEY_REG_LCD_BRIGHTNESS_AC : HKEY_REG_LCD_BRIGHTNESS_DC;

 ACPI_SERIAL_ASSERT(panasonic);
 switch (op) {
 case 128:
  hkey_lcd_brightness_max(h, 129, &max);
  hkey_lcd_brightness_min(h, 129, &min);
  if (*val < min || *val > max)
   return (EINVAL);
  acpi_panasonic_sset(h, reg, *val);
  break;
 case 129:
  *val = acpi_panasonic_sinf(h, reg);
  break;
 }

 return (0);
}
