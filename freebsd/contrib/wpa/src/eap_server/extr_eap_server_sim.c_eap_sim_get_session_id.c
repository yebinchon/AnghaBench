
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ state; int num_chal; int reauth_mac; int nonce_s; int nonce_mt; int rand; int reauth; } ;


 int EAP_SIM_MAC_LEN ;
 int EAP_SIM_NONCE_MT_LEN ;
 int EAP_SIM_NONCE_S_LEN ;
 int EAP_TYPE_SIM ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 scalar_t__ SUCCESS ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static u8 * eap_sim_get_session_id(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_sim_data *data = priv;
 u8 *id;

 if (data->state != SUCCESS)
  return ((void*)0);

 if (!data->reauth)
  *len = 1 + data->num_chal * GSM_RAND_LEN + EAP_SIM_NONCE_MT_LEN;
 else
  *len = 1 + EAP_SIM_NONCE_S_LEN + EAP_SIM_MAC_LEN;
 id = os_malloc(*len);
 if (id == ((void*)0))
  return ((void*)0);

 id[0] = EAP_TYPE_SIM;
 if (!data->reauth) {
  os_memcpy(id + 1, data->rand, data->num_chal * GSM_RAND_LEN);
  os_memcpy(id + 1 + data->num_chal * GSM_RAND_LEN,
     data->nonce_mt, EAP_SIM_NONCE_MT_LEN);
 } else {
  os_memcpy(id + 1, data->nonce_s, EAP_SIM_NONCE_S_LEN);
  os_memcpy(id + 1 + EAP_SIM_NONCE_S_LEN, data->reauth_mac,
     EAP_SIM_MAC_LEN);

 }
 wpa_hexdump(MSG_DEBUG, "EAP-SIM: Derived Session-Id", id, *len);

 return id;
}
