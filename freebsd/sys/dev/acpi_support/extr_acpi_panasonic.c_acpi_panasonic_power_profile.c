
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int HKEY_GET ;
 int HKEY_SET ;
 int hkey_lcd_brightness (scalar_t__,int ,int *) ;
 int panasonic ;

__attribute__((used)) static void
acpi_panasonic_power_profile(void *arg)
{
 ACPI_HANDLE handle;
 UINT32 brightness;

 handle = (ACPI_HANDLE)arg;


 ACPI_SERIAL_BEGIN(panasonic);
 hkey_lcd_brightness(handle, HKEY_GET, &brightness);
 hkey_lcd_brightness(handle, HKEY_SET, &brightness);
 ACPI_SERIAL_END(panasonic);
}
