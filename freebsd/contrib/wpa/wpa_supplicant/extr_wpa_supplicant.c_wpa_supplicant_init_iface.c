
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_6__ {size_t num_modes; TYPE_2__* modes; int flags; } ;
struct wpa_supplicant {scalar_t__ hw_capab; int drv_capa_known; int drv_flags; int max_remain_on_chan; int* extended_capa; int extended_capa_len; int num_multichan_concurrent; int mac_addr_rand_supported; int multi_bss_support; char* imsi; int enable_oce; TYPE_3__* conf; int mnc_len; int eapol; int mesh_external_pmksa_cache; int global; scalar_t__ p2p_mgmt; int * gas; int * ctrl_iface; int wpa; int gas_server; scalar_t__* ifname; int fst; int own_addr; scalar_t__ sched_scan_supported; int wmm_ac_supported; int extended_capa_mask; int max_stations; int max_match_sets; int max_sched_scan_plan_iterations; int max_sched_scan_plan_interval; int max_sched_scan_plans; int max_sched_scan_ssids; int max_scan_ssids; int probe_resp_offloads; int drv_rrm_flags; int drv_smps_modes; int drv_enc; TYPE_1__ hw; scalar_t__* bridge_ifname; int * confanother; int * confname; } ;
struct wpa_interface {char* ifname; char* confname; char* driver; char* ctrl_interface; char* bridge_ifname; char* confanother; char* driver_param; scalar_t__ p2p_mgmt; } ;
struct wpa_driver_capa {int flags; int max_remain_on_chan; int* extended_capa; int extended_capa_len; int num_multichan_concurrent; scalar_t__ mac_addr_rand_sched_scan_supported; scalar_t__ mac_addr_rand_scan_supported; int wmm_ac_supported; int extended_capa_mask; int max_stations; int max_match_sets; scalar_t__ sched_scan_supported; int max_sched_scan_plan_iterations; int max_sched_scan_plan_interval; int max_sched_scan_plans; int max_sched_scan_ssids; int max_scan_ssids; int probe_resp_offloads; int rrm_flags; int smps_modes; int enc; } ;
struct fst_wpa_obj {int dummy; } ;
struct fst_iface_cfg {scalar_t__* group_id; int llt; int priority; } ;
struct TYPE_8__ {char* fst_group_id; int oce; int non_pref_chan; int sched_scan_plans; int * ctrl_interface; int fst_llt; int fst_priority; scalar_t__* country; scalar_t__ dot11RSNAConfigSATimeout; scalar_t__ dot11RSNAConfigPMKReauthThreshold; scalar_t__ dot11RSNAConfigPMKLifetime; int fast_reauth; int * driver_param; } ;
struct TYPE_7__ {int ht_capab; scalar_t__ vht_capab; } ;


 scalar_t__ CAPAB_HT ;
 scalar_t__ CAPAB_HT40 ;
 scalar_t__ CAPAB_NO_HT_VHT ;
 scalar_t__ CAPAB_VHT ;
 int FALSE ;
 int HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET ;
 int MAC_ADDR_RAND_PNO ;
 int MAC_ADDR_RAND_SCAN ;
 int MAC_ADDR_RAND_SCHED_SCAN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int OCE_STA ;
 int OCE_STA_CFON ;
 int RSNA_PMK_LIFETIME ;
 int RSNA_PMK_REAUTH_THRESHOLD ;
 int RSNA_SA_TIMEOUT ;
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ;
 int WPA_DRIVER_FLAGS_OCE_STA ;
 int WPA_DRIVER_FLAGS_OCE_STA_CFON ;
 int WPA_IF_STATION ;
 int dl_list_init (int *) ;
 int eapol_sm_get_eap_proxy_imsi (int ,int,char*,size_t*) ;
 int eapol_sm_notify_portEnabled (int ,int ) ;
 int eapol_sm_notify_portValid (int ,int ) ;
 int fst_attach (scalar_t__*,int ,struct fst_wpa_obj*,struct fst_iface_cfg*) ;
 int fst_wpa_supplicant_fill_iface_obj (struct wpa_supplicant*,struct fst_wpa_obj*) ;
 int * gas_query_init (struct wpa_supplicant*) ;
 int gas_server_init (struct wpa_supplicant*,int ) ;
 int hs20_init (struct wpa_supplicant*) ;
 int os_free (int *) ;
 void* os_rel2abs_path (char*) ;
 void* os_strdup (char*) ;
 int os_strlcpy (scalar_t__*,char*,int) ;
 int os_strlen (char*) ;
 scalar_t__ pcsc_reader_init (struct wpa_supplicant*) ;
 scalar_t__ wpa_bss_init (struct wpa_supplicant*) ;
 TYPE_3__* wpa_config_alloc_empty (char*,char*) ;
 TYPE_3__* wpa_config_read (int *,TYPE_3__*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 int wpa_drv_get_ext_capa (struct wpa_supplicant*,int ) ;
 TYPE_2__* wpa_drv_get_hw_feature_data (struct wpa_supplicant*,size_t*,int *,int *) ;
 scalar_t__ wpa_drv_set_country (struct wpa_supplicant*,scalar_t__*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_sm_set_eapol (int ,int ) ;
 int wpa_sm_set_fast_reauth (int ,int ) ;
 int wpa_sm_set_ifname (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ wpa_sm_set_param (int ,int ,scalar_t__) ;
 int * wpa_supplicant_ctrl_iface_init (struct wpa_supplicant*) ;
 scalar_t__ wpa_supplicant_driver_init (struct wpa_supplicant*) ;
 scalar_t__ wpa_supplicant_init_eapol (struct wpa_supplicant*) ;
 scalar_t__ wpa_supplicant_init_wpa (struct wpa_supplicant*) ;
 int wpa_supplicant_set_default_scan_ies (struct wpa_supplicant*) ;
 scalar_t__ wpa_tdls_init (int ) ;
 scalar_t__ wpas_dpp_init (struct wpa_supplicant*) ;
 int wpas_gas_server_tx ;
 scalar_t__ wpas_init_driver (struct wpa_supplicant*,struct wpa_interface const*) ;
 scalar_t__ wpas_init_ext_pw (struct wpa_supplicant*) ;
 int wpas_mbo_update_non_pref_chan (struct wpa_supplicant*,int ) ;
 scalar_t__ wpas_p2p_init (int ,struct wpa_supplicant*) ;
 int wpas_rrm_reset (struct wpa_supplicant*) ;
 int wpas_sched_scan_plans_set (struct wpa_supplicant*,int ) ;
 scalar_t__ wpas_set_wowlan_triggers (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 scalar_t__ wpas_wps_init (struct wpa_supplicant*) ;

__attribute__((used)) static int wpa_supplicant_init_iface(struct wpa_supplicant *wpa_s,
         const struct wpa_interface *iface)
{
 struct wpa_driver_capa capa;
 int capa_res;
 u8 dfs_domain;

 wpa_printf(MSG_DEBUG, "Initializing interface '%s' conf '%s' driver "
     "'%s' ctrl_interface '%s' bridge '%s'", iface->ifname,
     iface->confname ? iface->confname : "N/A",
     iface->driver ? iface->driver : "default",
     iface->ctrl_interface ? iface->ctrl_interface : "N/A",
     iface->bridge_ifname ? iface->bridge_ifname : "N/A");

 if (iface->confname) {
  wpa_s->confname = os_strdup(iface->confname);

  wpa_s->conf = wpa_config_read(wpa_s->confname, ((void*)0));
  if (wpa_s->conf == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Failed to read or parse "
       "configuration '%s'.", wpa_s->confname);
   return -1;
  }
  wpa_s->confanother = os_rel2abs_path(iface->confanother);
  if (wpa_s->confanother &&
      !wpa_config_read(wpa_s->confanother, wpa_s->conf)) {
   wpa_printf(MSG_ERROR,
       "Failed to read or parse configuration '%s'.",
       wpa_s->confanother);
   return -1;
  }





  if (iface->ctrl_interface) {
   os_free(wpa_s->conf->ctrl_interface);
   wpa_s->conf->ctrl_interface =
    os_strdup(iface->ctrl_interface);
  }

  if (iface->driver_param) {
   os_free(wpa_s->conf->driver_param);
   wpa_s->conf->driver_param =
    os_strdup(iface->driver_param);
  }

  if (iface->p2p_mgmt && !iface->ctrl_interface) {
   os_free(wpa_s->conf->ctrl_interface);
   wpa_s->conf->ctrl_interface = ((void*)0);
  }
 } else
  wpa_s->conf = wpa_config_alloc_empty(iface->ctrl_interface,
           iface->driver_param);

 if (wpa_s->conf == ((void*)0)) {
  wpa_printf(MSG_ERROR, "\nNo configuration found.");
  return -1;
 }

 if (iface->ifname == ((void*)0)) {
  wpa_printf(MSG_ERROR, "\nInterface name is required.");
  return -1;
 }
 if (os_strlen(iface->ifname) >= sizeof(wpa_s->ifname)) {
  wpa_printf(MSG_ERROR, "\nToo long interface name '%s'.",
      iface->ifname);
  return -1;
 }
 os_strlcpy(wpa_s->ifname, iface->ifname, sizeof(wpa_s->ifname));

 if (iface->bridge_ifname) {
  if (os_strlen(iface->bridge_ifname) >=
      sizeof(wpa_s->bridge_ifname)) {
   wpa_printf(MSG_ERROR, "\nToo long bridge interface "
       "name '%s'.", iface->bridge_ifname);
   return -1;
  }
  os_strlcpy(wpa_s->bridge_ifname, iface->bridge_ifname,
      sizeof(wpa_s->bridge_ifname));
 }


 eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
 eapol_sm_notify_portValid(wpa_s->eapol, FALSE);





 if (wpas_init_driver(wpa_s, iface) < 0)
  return -1;

 if (wpa_supplicant_init_wpa(wpa_s) < 0)
  return -1;

 wpa_sm_set_ifname(wpa_s->wpa, wpa_s->ifname,
     wpa_s->bridge_ifname[0] ? wpa_s->bridge_ifname :
     ((void*)0));
 wpa_sm_set_fast_reauth(wpa_s->wpa, wpa_s->conf->fast_reauth);

 if (wpa_s->conf->dot11RSNAConfigPMKLifetime &&
     wpa_sm_set_param(wpa_s->wpa, RSNA_PMK_LIFETIME,
        wpa_s->conf->dot11RSNAConfigPMKLifetime)) {
  wpa_msg(wpa_s, MSG_ERROR, "Invalid WPA parameter value for "
   "dot11RSNAConfigPMKLifetime");
  return -1;
 }

 if (wpa_s->conf->dot11RSNAConfigPMKReauthThreshold &&
     wpa_sm_set_param(wpa_s->wpa, RSNA_PMK_REAUTH_THRESHOLD,
        wpa_s->conf->dot11RSNAConfigPMKReauthThreshold)) {
  wpa_msg(wpa_s, MSG_ERROR, "Invalid WPA parameter value for "
   "dot11RSNAConfigPMKReauthThreshold");
  return -1;
 }

 if (wpa_s->conf->dot11RSNAConfigSATimeout &&
     wpa_sm_set_param(wpa_s->wpa, RSNA_SA_TIMEOUT,
        wpa_s->conf->dot11RSNAConfigSATimeout)) {
  wpa_msg(wpa_s, MSG_ERROR, "Invalid WPA parameter value for "
   "dot11RSNAConfigSATimeout");
  return -1;
 }

 wpa_s->hw.modes = wpa_drv_get_hw_feature_data(wpa_s,
            &wpa_s->hw.num_modes,
            &wpa_s->hw.flags,
            &dfs_domain);
 if (wpa_s->hw.modes) {
  u16 i;

  for (i = 0; i < wpa_s->hw.num_modes; i++) {
   if (wpa_s->hw.modes[i].vht_capab) {
    wpa_s->hw_capab = CAPAB_VHT;
    break;
   }

   if (wpa_s->hw.modes[i].ht_capab &
       HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET)
    wpa_s->hw_capab = CAPAB_HT40;
   else if (wpa_s->hw.modes[i].ht_capab &&
     wpa_s->hw_capab == CAPAB_NO_HT_VHT)
    wpa_s->hw_capab = CAPAB_HT;
  }
 }

 capa_res = wpa_drv_get_capa(wpa_s, &capa);
 if (capa_res == 0) {
  wpa_s->drv_capa_known = 1;
  wpa_s->drv_flags = capa.flags;
  wpa_s->drv_enc = capa.enc;
  wpa_s->drv_smps_modes = capa.smps_modes;
  wpa_s->drv_rrm_flags = capa.rrm_flags;
  wpa_s->probe_resp_offloads = capa.probe_resp_offloads;
  wpa_s->max_scan_ssids = capa.max_scan_ssids;
  wpa_s->max_sched_scan_ssids = capa.max_sched_scan_ssids;
  wpa_s->max_sched_scan_plans = capa.max_sched_scan_plans;
  wpa_s->max_sched_scan_plan_interval =
   capa.max_sched_scan_plan_interval;
  wpa_s->max_sched_scan_plan_iterations =
   capa.max_sched_scan_plan_iterations;
  wpa_s->sched_scan_supported = capa.sched_scan_supported;
  wpa_s->max_match_sets = capa.max_match_sets;
  wpa_s->max_remain_on_chan = capa.max_remain_on_chan;
  wpa_s->max_stations = capa.max_stations;
  wpa_s->extended_capa = capa.extended_capa;
  wpa_s->extended_capa_mask = capa.extended_capa_mask;
  wpa_s->extended_capa_len = capa.extended_capa_len;
  wpa_s->num_multichan_concurrent =
   capa.num_multichan_concurrent;
  wpa_s->wmm_ac_supported = capa.wmm_ac_supported;

  if (capa.mac_addr_rand_scan_supported)
   wpa_s->mac_addr_rand_supported |= MAC_ADDR_RAND_SCAN;
  if (wpa_s->sched_scan_supported &&
      capa.mac_addr_rand_sched_scan_supported)
   wpa_s->mac_addr_rand_supported |=
    (MAC_ADDR_RAND_SCHED_SCAN | MAC_ADDR_RAND_PNO);

  wpa_drv_get_ext_capa(wpa_s, WPA_IF_STATION);
  if (wpa_s->extended_capa &&
      wpa_s->extended_capa_len >= 3 &&
      wpa_s->extended_capa[2] & 0x40)
   wpa_s->multi_bss_support = 1;
 }
 if (wpa_s->max_remain_on_chan == 0)
  wpa_s->max_remain_on_chan = 1000;






 if (wpa_s->drv_flags & WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE)
  wpa_s->p2p_mgmt = iface->p2p_mgmt;

 if (wpa_s->num_multichan_concurrent == 0)
  wpa_s->num_multichan_concurrent = 1;

 if (wpa_supplicant_driver_init(wpa_s) < 0)
  return -1;






 if (wpa_s->conf->country[0] && wpa_s->conf->country[1] &&
     wpa_drv_set_country(wpa_s, wpa_s->conf->country)) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Failed to set country");
  return -1;
 }
 if (wpas_wps_init(wpa_s))
  return -1;
 if (wpa_supplicant_init_eapol(wpa_s) < 0)
  return -1;
 wpa_sm_set_eapol(wpa_s->wpa, wpa_s->eapol);

 wpa_s->ctrl_iface = wpa_supplicant_ctrl_iface_init(wpa_s);
 if (wpa_s->ctrl_iface == ((void*)0)) {
  wpa_printf(MSG_ERROR,
      "Failed to initialize control interface '%s'.\n"
      "You may have another wpa_supplicant process "
      "already running or the file was\n"
      "left by an unclean termination of wpa_supplicant "
      "in which case you will need\n"
      "to manually remove this file before starting "
      "wpa_supplicant again.\n",
      wpa_s->conf->ctrl_interface);
  return -1;
 }

 wpa_s->gas = gas_query_init(wpa_s);
 if (wpa_s->gas == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to initialize GAS query");
  return -1;
 }

 if ((!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE) ||
      wpa_s->p2p_mgmt) &&
     wpas_p2p_init(wpa_s->global, wpa_s) < 0) {
  wpa_msg(wpa_s, MSG_ERROR, "Failed to init P2P");
  return -1;
 }

 if (wpa_bss_init(wpa_s) < 0)
  return -1;
 if (capa_res == 0 && wpas_set_wowlan_triggers(wpa_s, &capa) < 0)
  return -1;
 if (pcsc_reader_init(wpa_s) < 0)
  return -1;

 if (wpas_init_ext_pw(wpa_s) < 0)
  return -1;

 wpas_rrm_reset(wpa_s);

 wpas_sched_scan_plans_set(wpa_s, wpa_s->conf->sched_scan_plans);
 wpa_supplicant_set_default_scan_ies(wpa_s);

 return 0;
}
