
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int MSG_DEBUG ;
 scalar_t__ os_memcmp (char const*,int const*,scalar_t__) ;
 scalar_t__ os_strlen (char const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int dpp_pkex_identifier_match(const u8 *attr_id, u16 attr_id_len,
         const char *identifier)
{
 if (!attr_id && identifier) {
  wpa_printf(MSG_DEBUG,
      "DPP: No PKEX code identifier received, but expected one");
  return 0;
 }

 if (attr_id && !identifier) {
  wpa_printf(MSG_DEBUG,
      "DPP: PKEX code identifier received, but not expecting one");
  return 0;
 }

 if (attr_id && identifier &&
     (os_strlen(identifier) != attr_id_len ||
      os_memcmp(identifier, attr_id, attr_id_len) != 0)) {
  wpa_printf(MSG_DEBUG, "DPP: PKEX code identifier mismatch");
  return 0;
 }

 return 1;
}
