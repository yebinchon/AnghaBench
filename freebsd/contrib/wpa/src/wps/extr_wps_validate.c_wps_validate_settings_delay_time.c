
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_settings_delay_time(const u8 *delay, int mandatory)
{
 if (delay == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Settings Delay Time "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 return 0;
}
