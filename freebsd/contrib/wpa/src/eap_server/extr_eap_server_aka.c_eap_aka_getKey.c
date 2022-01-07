
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_aka_data {scalar_t__ state; int msk; } ;


 size_t EAP_SIM_KEYING_DATA_LEN ;
 scalar_t__ SUCCESS ;
 int * os_memdup (int ,size_t) ;

__attribute__((used)) static u8 * eap_aka_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_aka_data *data = priv;
 u8 *key;

 if (data->state != SUCCESS)
  return ((void*)0);

 key = os_memdup(data->msk, EAP_SIM_KEYING_DATA_LEN);
 if (key == ((void*)0))
  return ((void*)0);
 *len = EAP_SIM_KEYING_DATA_LEN;
 return key;
}
