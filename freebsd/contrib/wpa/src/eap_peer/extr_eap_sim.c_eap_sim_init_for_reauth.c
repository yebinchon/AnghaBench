
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ num_notification; scalar_t__ num_id_req; int nonce_mt; } ;


 int CONTINUE ;
 int EAP_SIM_NONCE_MT_LEN ;
 int MSG_WARNING ;
 int eap_sim_deinit (struct eap_sm*,struct eap_sim_data*) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void * eap_sim_init_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_sim_data *data = priv;
 if (random_get_bytes(data->nonce_mt, EAP_SIM_NONCE_MT_LEN)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Failed to get random data "
      "for NONCE_MT");
  eap_sim_deinit(sm, data);
  return ((void*)0);
 }
 data->num_id_req = 0;
 data->num_notification = 0;
 eap_sim_state(data, CONTINUE);
 return priv;
}
