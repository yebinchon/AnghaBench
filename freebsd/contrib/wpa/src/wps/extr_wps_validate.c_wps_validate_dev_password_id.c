
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_dev_password_id(const u8 *dev_password_id,
     int mandatory)
{
 u16 val;

 if (dev_password_id == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Device Password ID "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 val = WPA_GET_BE16(dev_password_id);
 if (val >= 0x0008 && val <= 0x000f) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Device Password ID "
      "attribute value 0x%04x", val);
  return -1;
 }
 return 0;
}
