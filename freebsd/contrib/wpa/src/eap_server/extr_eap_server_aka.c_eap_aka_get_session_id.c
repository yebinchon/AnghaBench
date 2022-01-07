
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_aka_data {scalar_t__ state; int reauth_mac; int nonce_s; int autn; int rand; int reauth; int eap_method; } ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_RAND_LEN ;
 int EAP_SIM_MAC_LEN ;
 int EAP_SIM_NONCE_S_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static u8 * eap_aka_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_aka_data *data = priv;
 u8 *id;

 if (data->state != SUCCESS)
  return ((void*)0);

 if (!data->reauth)
  *len = 1 + EAP_AKA_RAND_LEN + EAP_AKA_AUTN_LEN;
 else
  *len = 1 + EAP_SIM_NONCE_S_LEN + EAP_SIM_MAC_LEN;
 id = os_malloc(*len);
 if (id == ((void*)0))
  return ((void*)0);

 id[0] = data->eap_method;
 if (!data->reauth) {
  os_memcpy(id + 1, data->rand, EAP_AKA_RAND_LEN);
  os_memcpy(id + 1 + EAP_AKA_RAND_LEN, data->autn,
     EAP_AKA_AUTN_LEN);
 } else {
  os_memcpy(id + 1, data->nonce_s, EAP_SIM_NONCE_S_LEN);
  os_memcpy(id + 1 + EAP_SIM_NONCE_S_LEN, data->reauth_mac,
     EAP_SIM_MAC_LEN);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-AKA: Derived Session-Id", id, *len);

 return id;
}
