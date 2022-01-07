
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ttls_data {scalar_t__ state; int ssl; } ;
struct eap_sm {int dummy; } ;


 size_t EAP_TLS_KEY_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int * eap_server_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_ttls_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_ttls_data *data = priv;
 u8 *eapKeyData;

 if (data->state != SUCCESS)
  return ((void*)0);

 eapKeyData = eap_server_tls_derive_key(sm, &data->ssl,
            "ttls keying material", ((void*)0), 0,
            EAP_TLS_KEY_LEN);
 if (eapKeyData) {
  *len = EAP_TLS_KEY_LEN;
  wpa_hexdump_key(MSG_DEBUG, "EAP-TTLS: Derived key",
    eapKeyData, EAP_TLS_KEY_LEN);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Failed to derive key");
 }

 return eapKeyData;
}
