
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ttls_data {scalar_t__ state; int ssl; } ;
struct eap_sm {int dummy; } ;


 size_t EAP_EMSK_LEN ;
 int EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int bin_clear_free (int *,int) ;
 int * eap_server_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,int) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_ttls_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_ttls_data *data = priv;
 u8 *eapKeyData, *emsk;

 if (data->state != SUCCESS)
  return ((void*)0);

 eapKeyData = eap_server_tls_derive_key(sm, &data->ssl,
            "ttls keying material", ((void*)0), 0,
            EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
 if (eapKeyData) {
  emsk = os_malloc(EAP_EMSK_LEN);
  if (emsk)
   os_memcpy(emsk, eapKeyData + EAP_TLS_KEY_LEN,
      EAP_EMSK_LEN);
  bin_clear_free(eapKeyData, EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
 } else
  emsk = ((void*)0);

 if (emsk) {
  *len = EAP_EMSK_LEN;
  wpa_hexdump(MSG_DEBUG, "EAP-TTLS: Derived EMSK",
       emsk, EAP_EMSK_LEN);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Failed to derive EMSK");
 }

 return emsk;
}
