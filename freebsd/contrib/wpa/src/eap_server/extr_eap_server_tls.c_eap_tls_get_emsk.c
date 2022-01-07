
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ tls_v13; } ;
struct eap_tls_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int dummy; } ;


 size_t EAP_EMSK_LEN ;
 int EAP_TLS_KEY_LEN ;
 int const EAP_TYPE_TLS ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int bin_clear_free (int *,int) ;
 int * eap_server_tls_derive_key (struct eap_sm*,TYPE_1__*,char const*,int const*,size_t,int) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_tls_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_tls_data *data = priv;
 u8 *eapKeyData, *emsk;
 const char *label;
 const u8 eap_tls13_context[] = { EAP_TYPE_TLS };
 const u8 *context = ((void*)0);
 size_t context_len = 0;

 if (data->state != SUCCESS)
  return ((void*)0);

 if (data->ssl.tls_v13) {
  label = "EXPORTER_EAP_TLS_Key_Material";
  context = eap_tls13_context;
  context_len = 1;
 } else {
  label = "client EAP encryption";
 }
 eapKeyData = eap_server_tls_derive_key(sm, &data->ssl, label,
            context, context_len,
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
  wpa_hexdump(MSG_DEBUG, "EAP-TLS: Derived EMSK",
       emsk, EAP_EMSK_LEN);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-TLS: Failed to derive EMSK");
 }

 return emsk;
}
