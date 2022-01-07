
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int const WPS_CONN_ESS ;
 int const WPS_CONN_IBSS ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_conn_type_flags(const u8 *flags, int mandatory)
{
 if (flags == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Connection Type "
       "Flags attribute missing");
   return -1;
  }
  return 0;
 }
 if ((*flags & ~(WPS_CONN_ESS | WPS_CONN_IBSS)) ||
     !(*flags & WPS_CONN_ESS)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Connection Type "
      "Flags attribute value 0x%02x", *flags);
  return -1;
 }
 return 0;
}
