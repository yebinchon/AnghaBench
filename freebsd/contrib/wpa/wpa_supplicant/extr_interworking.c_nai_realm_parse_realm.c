
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nai_realm_eap {int dummy; } ;
struct nai_realm {int eap_count; int * eap; int * realm; int encoding; } ;


 int MSG_DEBUG ;
 int WPA_GET_LE16 (int const*) ;
 int * dup_binstr (int const*,int) ;
 int* nai_realm_parse_eap (int *,int const*,int const*) ;
 int * os_calloc (int,int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * nai_realm_parse_realm(struct nai_realm *r, const u8 *pos,
     const u8 *end)
{
 u16 len;
 const u8 *f_end;
 u8 realm_len, e;

 if (end - pos < 4) {
  wpa_printf(MSG_DEBUG, "No room for NAI Realm Data "
      "fixed fields");
  return ((void*)0);
 }

 len = WPA_GET_LE16(pos);
 pos += 2;
 if (len > end - pos || len < 3) {
  wpa_printf(MSG_DEBUG, "No room for NAI Realm Data "
      "(len=%u; left=%u)",
      len, (unsigned int) (end - pos));
  return ((void*)0);
 }
 f_end = pos + len;

 r->encoding = *pos++;
 realm_len = *pos++;
 if (realm_len > f_end - pos) {
  wpa_printf(MSG_DEBUG, "No room for NAI Realm "
      "(len=%u; left=%u)",
      realm_len, (unsigned int) (f_end - pos));
  return ((void*)0);
 }
 wpa_hexdump_ascii(MSG_DEBUG, "NAI Realm", pos, realm_len);
 r->realm = dup_binstr(pos, realm_len);
 if (r->realm == ((void*)0))
  return ((void*)0);
 pos += realm_len;

 if (f_end - pos < 1) {
  wpa_printf(MSG_DEBUG, "No room for EAP Method Count");
  return ((void*)0);
 }
 r->eap_count = *pos++;
 wpa_printf(MSG_DEBUG, "EAP Count: %u", r->eap_count);
 if (r->eap_count * 3 > f_end - pos) {
  wpa_printf(MSG_DEBUG, "No room for EAP Methods");
  return ((void*)0);
 }
 r->eap = os_calloc(r->eap_count, sizeof(struct nai_realm_eap));
 if (r->eap == ((void*)0))
  return ((void*)0);

 for (e = 0; e < r->eap_count; e++) {
  pos = nai_realm_parse_eap(&r->eap[e], pos, f_end);
  if (pos == ((void*)0))
   return ((void*)0);
 }

 return f_end;
}
