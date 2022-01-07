
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int HCI_REG_LCD_BACKLIGHT ;
 int HCI_SET ;
 int hci_call (int ,int,int ,int*) ;
 int toshiba ;

__attribute__((used)) static int
hci_lcd_backlight(ACPI_HANDLE h, int op, UINT32 *backlight)
{

 ACPI_SERIAL_ASSERT(toshiba);
 if (op == HCI_SET) {
  if (*backlight > 1)
   return (EINVAL);
 }
 return (hci_call(h, op, HCI_REG_LCD_BACKLIGHT, backlight));
}
