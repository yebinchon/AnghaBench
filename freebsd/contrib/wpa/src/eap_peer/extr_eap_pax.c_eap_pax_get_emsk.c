
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int e; } ;
struct eap_pax_data {scalar_t__ state; TYPE_1__ rand; int mk; int mac_id; } ;


 size_t EAP_EMSK_LEN ;
 int EAP_PAX_MK_LEN ;
 int EAP_PAX_RAND_LEN ;
 scalar_t__ PAX_DONE ;
 scalar_t__ eap_pax_kdf (int ,int ,int ,char*,int ,int,size_t,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;

__attribute__((used)) static u8 * eap_pax_get_emsk(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_pax_data *data = priv;
 u8 *key;

 if (data->state != PAX_DONE)
  return ((void*)0);

 key = os_malloc(EAP_EMSK_LEN);
 if (key == ((void*)0))
  return ((void*)0);

 *len = EAP_EMSK_LEN;
 if (eap_pax_kdf(data->mac_id, data->mk, EAP_PAX_MK_LEN,
   "Extended Master Session Key",
   data->rand.e, 2 * EAP_PAX_RAND_LEN,
   EAP_EMSK_LEN, key) < 0) {
  os_free(key);
  return ((void*)0);
 }

 return key;
}
