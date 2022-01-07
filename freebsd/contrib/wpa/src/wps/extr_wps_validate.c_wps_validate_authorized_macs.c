
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t ETH_ALEN ;
 int MSG_INFO ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_authorized_macs(const u8 *authorized_macs, size_t len,
     int mandatory)
{
 if (authorized_macs == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Authorized MACs "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len > 30 && (len % ETH_ALEN) != 0) {
  wpa_hexdump(MSG_INFO, "WPS-STRICT: Invalid Authorized "
       "MACs attribute value", authorized_macs, len);
  return -1;
 }
 return 0;
}
