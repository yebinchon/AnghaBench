
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * dpp_configurator_params; int * dpp_pkex; int * dpp_auth; int dpp_init_done; scalar_t__ dpp_ignore_netaccesskey_mismatch; int * dpp_groups_override; int * dpp_discovery_override; int * dpp_config_obj_override; } ;


 int dpp_auth_deinit (int *) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_dpp_auth_resp_retry_timeout ;
 int hostapd_dpp_config_result_wait_timeout ;
 int hostapd_dpp_init_timeout ;
 int hostapd_dpp_pkex_remove (struct hostapd_data*,char*) ;
 int hostapd_dpp_reply_wait_timeout ;
 int os_free (int *) ;

void hostapd_dpp_deinit(struct hostapd_data *hapd)
{
 if (!hapd->dpp_init_done)
  return;
 eloop_cancel_timeout(hostapd_dpp_reply_wait_timeout, hapd, ((void*)0));
 eloop_cancel_timeout(hostapd_dpp_init_timeout, hapd, ((void*)0));
 eloop_cancel_timeout(hostapd_dpp_auth_resp_retry_timeout, hapd, ((void*)0));




 dpp_auth_deinit(hapd->dpp_auth);
 hapd->dpp_auth = ((void*)0);
 hostapd_dpp_pkex_remove(hapd, "*");
 hapd->dpp_pkex = ((void*)0);
 os_free(hapd->dpp_configurator_params);
 hapd->dpp_configurator_params = ((void*)0);
}
