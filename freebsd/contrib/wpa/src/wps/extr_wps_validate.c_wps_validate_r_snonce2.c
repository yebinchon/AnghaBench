
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_r_snonce2(const u8 *nonce, int mandatory)
{
 if (nonce == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: R-SNonce2 "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 return 0;
}
