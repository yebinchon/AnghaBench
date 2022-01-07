
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int HCI_GET ;
 int HCI_LCD_BRIGHTNESS_MAX ;
 int HCI_LCD_BRIGHTNESS_SHIFT ;
 int HCI_REG_LCD_BRIGHTNESS ;
 int HCI_SET ;
 int hci_call (int ,int,int ,int*) ;
 int toshiba ;

__attribute__((used)) static int
hci_lcd_brightness(ACPI_HANDLE h, int op, UINT32 *brightness)
{
 int ret;

 ACPI_SERIAL_ASSERT(toshiba);
 if (op == HCI_SET) {
  if (*brightness > HCI_LCD_BRIGHTNESS_MAX)
   return (EINVAL);
  *brightness <<= HCI_LCD_BRIGHTNESS_SHIFT;
 }
 ret = hci_call(h, op, HCI_REG_LCD_BRIGHTNESS, brightness);
 if (ret == 0 && op == HCI_GET)
  *brightness >>= HCI_LCD_BRIGHTNESS_SHIFT;
 return (ret);
}
