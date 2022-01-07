
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_ikev2_data {scalar_t__ state; int keymat; int keymat_ok; } ;


 scalar_t__ DONE ;
 size_t EAP_MSK_LEN ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,size_t) ;

__attribute__((used)) static u8 * eap_ikev2_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_ikev2_data *data = priv;
 u8 *key;

 if (data->state != DONE || !data->keymat_ok)
  return ((void*)0);

 key = os_malloc(EAP_MSK_LEN);
 if (key) {
  os_memcpy(key, data->keymat, EAP_MSK_LEN);
  *len = EAP_MSK_LEN;
 }

 return key;
}
