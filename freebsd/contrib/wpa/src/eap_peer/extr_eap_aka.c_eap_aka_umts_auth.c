
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int scard_ctx; scalar_t__ external_sim; } ;
struct eap_peer_config {int password_len; scalar_t__ password; scalar_t__ pcsc; scalar_t__ external_sim_resp; } ;
struct eap_aka_data {int res_len; int autn; int * ck; int * ik; int * res; int auts; int rand; } ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_CK_LEN ;
 int EAP_AKA_IK_LEN ;
 int EAP_AKA_RES_MAX_LEN ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int eap_aka_ext_sim_req (struct eap_sm*,struct eap_aka_data*) ;
 int eap_aka_ext_sim_result (struct eap_sm*,struct eap_aka_data*,struct eap_peer_config*) ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 scalar_t__ hexstr2bin (char const*,int *,int) ;
 int milenage_check (int *,int *,int *,int ,int ,int *,int *,int *,int*,int ) ;
 scalar_t__ os_memcmp_const (int *,int ,int) ;
 int os_memset (int *,char,int) ;
 int scard_umts_auth (int ,int ,int ,int *,int*,int *,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_aka_umts_auth(struct eap_sm *sm, struct eap_aka_data *data)
{
 struct eap_peer_config *conf;

 wpa_printf(MSG_DEBUG, "EAP-AKA: UMTS authentication algorithm");

 conf = eap_get_config(sm);
 if (conf == ((void*)0))
  return -1;

 if (sm->external_sim) {
  if (conf->external_sim_resp)
   return eap_aka_ext_sim_result(sm, data, conf);
  else
   return eap_aka_ext_sim_req(sm, data);
 }

 if (conf->pcsc) {
  return scard_umts_auth(sm->scard_ctx, data->rand,
           data->autn, data->res, &data->res_len,
           data->ik, data->ck, data->auts);
 }
 wpa_printf(MSG_DEBUG, "EAP-AKA: No UMTS authentication algorithm "
     "enabled");
 return -1;


}
