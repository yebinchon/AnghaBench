
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ key_data; scalar_t__ crypto_binding_used; int phase2_success; } ;


 size_t EAP_EMSK_LEN ;
 scalar_t__ EAP_TLS_KEY_LEN ;
 int * os_memdup (scalar_t__,size_t) ;

__attribute__((used)) static u8 * eap_peap_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_peap_data *data = priv;
 u8 *key;

 if (!data->key_data || !data->phase2_success)
  return ((void*)0);

 if (data->crypto_binding_used) {

  return ((void*)0);
 }

 key = os_memdup(data->key_data + EAP_TLS_KEY_LEN, EAP_EMSK_LEN);
 if (!key)
  return ((void*)0);

 *len = EAP_EMSK_LEN;

 return key;
}
