
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eapol_sm {int eap; } ;


 int MSG_DEBUG ;
 int const* eap_get_eapSessionId (int ,size_t*) ;
 int eap_key_available (int ) ;
 int wpa_printf (int ,char*) ;

const u8 * eapol_sm_get_session_id(struct eapol_sm *sm, size_t *len)
{
 if (sm == ((void*)0) || !eap_key_available(sm->eap)) {
  wpa_printf(MSG_DEBUG, "EAPOL: EAP Session-Id not available");
  return ((void*)0);
 }
 return eap_get_eapSessionId(sm->eap, len);
}
