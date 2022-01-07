
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_validate_cred (int const*,int ) ;

__attribute__((used)) static int wps_validate_credential(const u8 *cred[], u16 len[], size_t num,
       int mandatory)
{
 size_t i;

 if (num == 0) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Credential "
       "attribute missing");
   return -1;
  }
  return 0;
 }

 for (i = 0; i < num; i++) {
  if (wps_validate_cred(cred[i], len[i]) < 0)
   return -1;
 }

 return 0;
}
