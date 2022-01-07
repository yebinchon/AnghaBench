
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection_params {int dummy; } ;
struct eap_ssl_data {int tls_out_limit; int include_tls_length; scalar_t__ phase2; scalar_t__ ssl_ctx; int eap_type; struct eap_sm* eap; } ;
struct eap_sm {scalar_t__ ssl_ctx; scalar_t__ ssl_ctx2; scalar_t__ init_phase2; } ;
struct eap_peer_config {int fragment_size; scalar_t__ phase1; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_tls_init_connection (struct eap_sm*,struct eap_ssl_data*,struct eap_peer_config*,struct tls_connection_params*) ;
 scalar_t__ eap_tls_params_from_conf (struct eap_sm*,struct eap_ssl_data*,struct tls_connection_params*,struct eap_peer_config*,scalar_t__) ;
 scalar_t__ os_strstr (scalar_t__,char*) ;
 int wpa_printf (int ,char*) ;

int eap_peer_tls_ssl_init(struct eap_sm *sm, struct eap_ssl_data *data,
     struct eap_peer_config *config, u8 eap_type)
{
 struct tls_connection_params params;

 if (config == ((void*)0))
  return -1;

 data->eap = sm;
 data->eap_type = eap_type;
 data->phase2 = sm->init_phase2;
 data->ssl_ctx = sm->init_phase2 && sm->ssl_ctx2 ? sm->ssl_ctx2 :
  sm->ssl_ctx;
 if (eap_tls_params_from_conf(sm, data, &params, config, data->phase2) <
     0)
  return -1;

 if (eap_tls_init_connection(sm, data, config, &params) < 0)
  return -1;

 data->tls_out_limit = config->fragment_size;
 if (data->phase2) {



  if (data->tls_out_limit > 100)
   data->tls_out_limit -= 100;
 }

 if (config->phase1 &&
     os_strstr(config->phase1, "include_tls_length=1")) {
  wpa_printf(MSG_DEBUG, "TLS: Include TLS Message Length in "
      "unfragmented packets");
  data->include_tls_length = 1;
 }

 return 0;
}
