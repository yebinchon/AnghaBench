
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ state; int ssl; scalar_t__ crypto_binding_used; } ;


 size_t EAP_EMSK_LEN ;
 int EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int bin_clear_free (int *,int) ;
 int * eap_server_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,int) ;
 int * os_memdup (int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_peap_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_peap_data *data = priv;
 u8 *eapKeyData, *emsk;

 if (data->state != SUCCESS)
  return ((void*)0);

 if (data->crypto_binding_used) {

  return ((void*)0);
 }


 eapKeyData = eap_server_tls_derive_key(sm, &data->ssl,
            "client EAP encryption", ((void*)0), 0,
            EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
 if (eapKeyData) {
  emsk = os_memdup(eapKeyData + EAP_TLS_KEY_LEN, EAP_EMSK_LEN);
  bin_clear_free(eapKeyData, EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
  if (!emsk)
   return ((void*)0);
  *len = EAP_EMSK_LEN;
  wpa_hexdump(MSG_DEBUG, "EAP-PEAP: Derived EMSK",
       emsk, EAP_EMSK_LEN);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Failed to derive EMSK");
  emsk = ((void*)0);
 }

 return emsk;
}
