
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tls_data {int * key_data; } ;
struct eap_sm {int dummy; } ;


 size_t EAP_TLS_KEY_LEN ;
 int * os_memdup (int *,size_t) ;

__attribute__((used)) static u8 * eap_tls_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_tls_data *data = priv;
 u8 *key;

 if (data->key_data == ((void*)0))
  return ((void*)0);

 key = os_memdup(data->key_data, EAP_TLS_KEY_LEN);
 if (key == ((void*)0))
  return ((void*)0);

 *len = EAP_TLS_KEY_LEN;

 return key;
}
