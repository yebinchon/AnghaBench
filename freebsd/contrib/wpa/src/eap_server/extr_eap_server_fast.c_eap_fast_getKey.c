
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {scalar_t__ state; int simck; } ;


 size_t EAP_FAST_KEY_LEN ;
 scalar_t__ SUCCESS ;
 scalar_t__ eap_fast_derive_eap_msk (int ,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;

__attribute__((used)) static u8 * eap_fast_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_fast_data *data = priv;
 u8 *eapKeyData;

 if (data->state != SUCCESS)
  return ((void*)0);

 eapKeyData = os_malloc(EAP_FAST_KEY_LEN);
 if (eapKeyData == ((void*)0))
  return ((void*)0);

 if (eap_fast_derive_eap_msk(data->simck, eapKeyData) < 0) {
  os_free(eapKeyData);
  return ((void*)0);
 }
 *len = EAP_FAST_KEY_LEN;

 return eapKeyData;
}
