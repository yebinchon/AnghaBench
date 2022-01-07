
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_teap_data {scalar_t__ state; int simck_msk; } ;
struct eap_sm {int dummy; } ;


 size_t EAP_TEAP_KEY_LEN ;
 scalar_t__ SUCCESS ;
 scalar_t__ eap_teap_derive_eap_msk (int ,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;

__attribute__((used)) static u8 * eap_teap_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_teap_data *data = priv;
 u8 *eapKeyData;

 if (data->state != SUCCESS)
  return ((void*)0);

 eapKeyData = os_malloc(EAP_TEAP_KEY_LEN);
 if (!eapKeyData)
  return ((void*)0);



 if (eap_teap_derive_eap_msk(data->simck_msk, eapKeyData) < 0) {
  os_free(eapKeyData);
  return ((void*)0);
 }
 *len = EAP_TEAP_KEY_LEN;

 return eapKeyData;
}
