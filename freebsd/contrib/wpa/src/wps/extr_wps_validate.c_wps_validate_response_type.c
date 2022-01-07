
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_response_type(const u8 *response_type, int mandatory)
{
 if (response_type == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Response Type "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (*response_type > 0x03) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Response Type "
      "attribute value 0x%x", *response_type);
  return -1;
 }
 return 0;
}
