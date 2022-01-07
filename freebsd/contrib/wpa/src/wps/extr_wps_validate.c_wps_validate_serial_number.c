
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_INFO ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_serial_number(const u8 *serial_number, size_t len,
          int mandatory)
{
 if (serial_number == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Serial Number "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len > 0 && serial_number[len - 1] == 0) {
  wpa_hexdump_ascii(MSG_INFO, "WPS-STRICT: Invalid Serial "
      "Number attribute value",
      serial_number, len);
  return -1;
 }
 return 0;
}
