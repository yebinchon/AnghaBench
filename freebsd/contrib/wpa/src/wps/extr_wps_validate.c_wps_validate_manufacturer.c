
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_INFO ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_manufacturer(const u8 *manufacturer, size_t len,
         int mandatory)
{
 if (manufacturer == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Manufacturer "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len > 0 && manufacturer[len - 1] == 0) {
  wpa_hexdump_ascii(MSG_INFO, "WPS-STRICT: Invalid Manufacturer "
      "attribute value", manufacturer, len);
  return -1;
 }
 return 0;
}
