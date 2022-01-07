
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {scalar_t__ state; int emsk; } ;


 size_t EAP_EMSK_LEN ;
 scalar_t__ SUCCESS ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,size_t) ;

__attribute__((used)) static u8 * eap_pwd_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_pwd_data *data = priv;
 u8 *key;

 if (data->state != SUCCESS)
  return ((void*)0);

 if ((key = os_malloc(EAP_EMSK_LEN)) == ((void*)0))
  return ((void*)0);

 os_memcpy(key, data->emsk, EAP_EMSK_LEN);
 *len = EAP_EMSK_LEN;

 return key;
}
