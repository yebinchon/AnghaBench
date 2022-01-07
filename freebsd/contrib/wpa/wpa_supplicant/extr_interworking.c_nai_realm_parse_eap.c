
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nai_realm_eap {int inner_non_eap; int inner_method; int cred_type; int tunneled_cred_type; int method; } ;


 int EAP_TYPE_TTLS ;
 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * nai_realm_parse_eap(struct nai_realm_eap *e, const u8 *pos,
          const u8 *end)
{
 u8 elen, auth_count, a;
 const u8 *e_end;

 if (end - pos < 3) {
  wpa_printf(MSG_DEBUG, "No room for EAP Method fixed fields");
  return ((void*)0);
 }

 elen = *pos++;
 if (elen > end - pos || elen < 2) {
  wpa_printf(MSG_DEBUG, "No room for EAP Method subfield");
  return ((void*)0);
 }
 e_end = pos + elen;
 e->method = *pos++;
 auth_count = *pos++;
 wpa_printf(MSG_DEBUG, "EAP Method: len=%u method=%u auth_count=%u",
     elen, e->method, auth_count);

 for (a = 0; a < auth_count; a++) {
  u8 id, len;

  if (end - pos < 2) {
   wpa_printf(MSG_DEBUG,
       "No room for Authentication Parameter subfield header");
   return ((void*)0);
  }

  id = *pos++;
  len = *pos++;
  if (len > end - pos) {
   wpa_printf(MSG_DEBUG,
       "No room for Authentication Parameter subfield");
   return ((void*)0);
  }

  switch (id) {
  case 133:
   if (len < 1)
    break;
   e->inner_non_eap = *pos;
   if (e->method != EAP_TYPE_TTLS)
    break;
   switch (*pos) {
   case 128:
    wpa_printf(MSG_DEBUG, "EAP-TTLS/PAP");
    break;
   case 131:
    wpa_printf(MSG_DEBUG, "EAP-TTLS/CHAP");
    break;
   case 130:
    wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP");
    break;
   case 129:
    wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAPV2");
    break;
   }
   break;
  case 134:
   if (len < 1)
    break;
   e->inner_method = *pos;
   wpa_printf(MSG_DEBUG, "Inner EAP method: %u",
       e->inner_method);
   break;
  case 135:
   if (len < 1)
    break;
   e->cred_type = *pos;
   wpa_printf(MSG_DEBUG, "Credential Type: %u",
       e->cred_type);
   break;
  case 132:
   if (len < 1)
    break;
   e->tunneled_cred_type = *pos;
   wpa_printf(MSG_DEBUG, "Tunneled EAP Method Credential "
       "Type: %u", e->tunneled_cred_type);
   break;
  default:
   wpa_printf(MSG_DEBUG, "Unsupported Authentication "
       "Parameter: id=%u len=%u", id, len);
   wpa_hexdump(MSG_DEBUG, "Authentication Parameter "
        "Value", pos, len);
   break;
  }

  pos += len;
 }

 return e_end;
}
