
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int scard_ctx; scalar_t__ external_sim; } ;
struct eap_sim_data {int** rand; int num_chal; int * sres; int * kc; } ;
struct eap_peer_config {int password_len; scalar_t__ password; scalar_t__ pcsc; scalar_t__ external_sim_resp; } ;


 int EAP_SIM_KC_LEN ;
 int EAP_SIM_SRES_LEN ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_sim_ext_sim_req (struct eap_sm*,struct eap_sim_data*) ;
 int eap_sim_ext_sim_result (struct eap_sm*,struct eap_sim_data*,struct eap_peer_config*) ;
 scalar_t__ gsm_milenage (int *,int *,int*,int ,int ) ;
 scalar_t__ hexstr2bin (char const*,int *,int) ;
 int os_memcpy (int ,char*,int ) ;
 scalar_t__ scard_gsm_auth (int ,int*,int ,int ) ;
 int wpa_hexdump (int ,char*,int*,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_sim_gsm_auth(struct eap_sm *sm, struct eap_sim_data *data)
{
 struct eap_peer_config *conf;

 wpa_printf(MSG_DEBUG, "EAP-SIM: GSM authentication algorithm");

 conf = eap_get_config(sm);
 if (conf == ((void*)0))
  return -1;

 if (sm->external_sim) {
  if (conf->external_sim_resp)
   return eap_sim_ext_sim_result(sm, data, conf);
  else
   return eap_sim_ext_sim_req(sm, data);
 }
 wpa_printf(MSG_DEBUG, "EAP-SIM: No GSM authentication algorithm "
     "enabled");
 return -1;


}
