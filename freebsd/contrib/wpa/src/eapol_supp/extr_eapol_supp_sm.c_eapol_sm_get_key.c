
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eapol_sm {int eap; int eap_proxy; scalar_t__ use_eap_proxy; } ;


 int MSG_DEBUG ;
 int * eap_get_eapKeyData (int ,size_t*) ;
 int eap_key_available (int ) ;
 int * eap_proxy_get_eapKeyData (int ,size_t*) ;
 int eap_proxy_key_available (int ) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

int eapol_sm_get_key(struct eapol_sm *sm, u8 *key, size_t len)
{
 const u8 *eap_key;
 size_t eap_len;
 if (sm == ((void*)0) || !eap_key_available(sm->eap)) {
  wpa_printf(MSG_DEBUG, "EAPOL: EAP key not available");
  return -1;
 }
 eap_key = eap_get_eapKeyData(sm->eap, &eap_len);
 if (eap_key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAPOL: Failed to get eapKeyData");
  return -1;
 }



 if (len > eap_len) {
  wpa_printf(MSG_DEBUG, "EAPOL: Requested key length (%lu) not "
      "available (len=%lu)",
      (unsigned long) len, (unsigned long) eap_len);
  return eap_len;
 }
 os_memcpy(key, eap_key, len);
 wpa_printf(MSG_DEBUG, "EAPOL: Successfully fetched key (len=%lu)",
     (unsigned long) len);
 return 0;
}
