
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttls_parse_avp {size_t eap_len; int * eapdata; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int os_memcpy (int *,int const*,size_t) ;
 int * os_memdup (int const*,size_t) ;
 int * os_realloc (int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ttls_parse_attr_eap(const u8 *dpos, size_t dlen,
       struct ttls_parse_avp *parse)
{
 wpa_printf(MSG_DEBUG, "EAP-TTLS: AVP - EAP Message");
 if (parse->eapdata == ((void*)0)) {
  parse->eapdata = os_memdup(dpos, dlen);
  if (parse->eapdata == ((void*)0)) {
   wpa_printf(MSG_WARNING, "EAP-TTLS: Failed to allocate "
       "memory for Phase 2 EAP data");
   return -1;
  }
  parse->eap_len = dlen;
 } else {
  u8 *neweap = os_realloc(parse->eapdata, parse->eap_len + dlen);
  if (neweap == ((void*)0)) {
   wpa_printf(MSG_WARNING, "EAP-TTLS: Failed to allocate "
       "memory for Phase 2 EAP data");
   return -1;
  }
  os_memcpy(neweap + parse->eap_len, dpos, dlen);
  parse->eapdata = neweap;
  parse->eap_len += dlen;
 }

 return 0;
}
