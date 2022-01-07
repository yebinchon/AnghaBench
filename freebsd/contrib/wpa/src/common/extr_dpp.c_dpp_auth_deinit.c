
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_authentication {int groups_override; int discovery_override; int config_obj_override; int tmp_own_bi; int c_sign_key; int net_access_key; int connector; int conf_req; int resp_msg; int req_msg; int peer_protocol_key; int own_protocol_key; int conf_sta; int conf_ap; } ;


 int EVP_PKEY_free (int ) ;
 int bin_clear_free (struct dpp_authentication*,int) ;
 int dpp_bootstrap_info_free (int ) ;
 int dpp_configuration_free (int ) ;
 int os_free (int ) ;
 int wpabuf_free (int ) ;

void dpp_auth_deinit(struct dpp_authentication *auth)
{
 if (!auth)
  return;
 dpp_configuration_free(auth->conf_ap);
 dpp_configuration_free(auth->conf_sta);
 EVP_PKEY_free(auth->own_protocol_key);
 EVP_PKEY_free(auth->peer_protocol_key);
 wpabuf_free(auth->req_msg);
 wpabuf_free(auth->resp_msg);
 wpabuf_free(auth->conf_req);
 os_free(auth->connector);
 wpabuf_free(auth->net_access_key);
 wpabuf_free(auth->c_sign_key);
 dpp_bootstrap_info_free(auth->tmp_own_bi);





 bin_clear_free(auth, sizeof(*auth));
}
