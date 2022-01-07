
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int emsk; int success; } ;


 size_t EAP_EMSK_LEN ;
 int * os_memdup (int ,size_t) ;

__attribute__((used)) static u8 * eap_fast_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_fast_data *data = priv;
 u8 *key;

 if (!data->success)
  return ((void*)0);

 key = os_memdup(data->emsk, EAP_EMSK_LEN);
 if (key == ((void*)0))
  return ((void*)0);

 *len = EAP_EMSK_LEN;

 return key;
}
