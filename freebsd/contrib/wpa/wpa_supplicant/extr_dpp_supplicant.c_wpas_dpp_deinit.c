
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * dpp_configurator_params; int dpp_intro_bssid; int * dpp_pfs; int dpp; scalar_t__ dpp_ignore_netaccesskey_mismatch; int * dpp_groups_override; int * dpp_discovery_override; int * dpp_config_obj_override; } ;


 int ETH_ALEN ;
 int dpp_global_clear (int ) ;
 int dpp_pfs_free (int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int os_free (int *) ;
 int os_memset (int ,int ,int ) ;
 int wpas_dpp_auth_resp_retry_timeout ;
 int wpas_dpp_config_result_wait_timeout ;
 int wpas_dpp_init_timeout ;
 int wpas_dpp_listen_stop (struct wpa_supplicant*) ;
 int wpas_dpp_pkex_remove (struct wpa_supplicant*,char*) ;
 int wpas_dpp_pkex_retry_timeout ;
 int wpas_dpp_reply_wait_timeout ;
 int wpas_dpp_stop (struct wpa_supplicant*) ;

void wpas_dpp_deinit(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->dpp)
  return;
 dpp_global_clear(wpa_s->dpp);
 eloop_cancel_timeout(wpas_dpp_pkex_retry_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_dpp_reply_wait_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_dpp_init_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_dpp_auth_resp_retry_timeout, wpa_s, ((void*)0));





 offchannel_send_action_done(wpa_s);
 wpas_dpp_listen_stop(wpa_s);
 wpas_dpp_stop(wpa_s);
 wpas_dpp_pkex_remove(wpa_s, "*");
 os_memset(wpa_s->dpp_intro_bssid, 0, ETH_ALEN);
 os_free(wpa_s->dpp_configurator_params);
 wpa_s->dpp_configurator_params = ((void*)0);
}
