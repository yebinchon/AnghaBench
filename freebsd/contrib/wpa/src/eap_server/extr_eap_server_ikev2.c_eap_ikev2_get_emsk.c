
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_ikev2_data {scalar_t__ state; scalar_t__ keymat; int keymat_ok; } ;


 scalar_t__ DONE ;
 size_t EAP_EMSK_LEN ;
 scalar_t__ EAP_MSK_LEN ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,scalar_t__,size_t) ;

__attribute__((used)) static u8 * eap_ikev2_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_ikev2_data *data = priv;
 u8 *key;

 if (data->state != DONE || !data->keymat_ok)
  return ((void*)0);

 key = os_malloc(EAP_EMSK_LEN);
 if (key) {
  os_memcpy(key, data->keymat + EAP_MSK_LEN, EAP_EMSK_LEN);
  *len = EAP_EMSK_LEN;
 }

 return key;
}
