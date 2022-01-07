
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2p_first_connection_timeout; scalar_t__ p2p_fallback_to_go_neg; TYPE_1__* global; int p2pdev; } ;
struct wpa_ssid {int disabled; int ssid_len; scalar_t__ mode; int * ssid; int passphrase; int * psk; scalar_t__ psk_set; int bssid; } ;
struct wpa_bss {int freq; int last_update; } ;
struct p2p_go_neg_results {int role_go; int ssid_len; int persistent_group; int freq_list; int ssid; int passphrase; int psk; scalar_t__ psk_set; } ;
struct p2p_channels {int dummy; } ;
struct os_reltime {int dummy; } ;
struct TYPE_2__ {int * add_psk; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int P2P_MAX_CHANNELS ;
 int P2P_MAX_INITIAL_CONN_WAIT ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ eloop_cancel_timeout (int ,int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 scalar_t__ freq_included (struct wpa_supplicant*,struct p2p_channels const*,int) ;
 int os_free (int *) ;
 int os_get_reltime (struct os_reltime*) ;
 int os_memcpy (int ,int *,int) ;
 int os_reltime_expired (struct os_reltime*,int *,int) ;
 int os_strlcpy (int ,int ,int) ;
 int os_strlen (int ) ;
 int p2p_channels_to_freqs (struct p2p_channels const*,int ,int ) ;
 struct wpa_bss* wpa_bss_get_p2p_dev_addr (struct wpa_supplicant*,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpas_get_p2p_group (struct wpa_supplicant*,int *,int,int*) ;
 struct wpa_supplicant* wpas_p2p_get_group_iface (struct wpa_supplicant*,int,int) ;
 int wpas_p2p_group_formation_timeout ;
 scalar_t__ wpas_p2p_init_go_params (struct wpa_supplicant*,struct p2p_go_neg_results*,int,int,int,int,int,int,struct p2p_channels const*) ;
 int wpas_p2p_select_go_freq (struct wpa_supplicant*,int) ;
 int wpas_p2p_stop_find_oper (struct wpa_supplicant*) ;
 int wpas_start_p2p_client (struct wpa_supplicant*,struct wpa_ssid*,int,int,int) ;
 int wpas_start_wps_go (struct wpa_supplicant*,struct p2p_go_neg_results*,int ) ;

int wpas_p2p_group_add_persistent(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *ssid, int addr_allocated,
      int force_freq, int neg_freq,
      int vht_center_freq2, int ht40,
      int vht, int max_oper_chwidth, int he,
      const struct p2p_channels *channels,
      int connection_timeout, int force_scan)
{
 struct p2p_go_neg_results params;
 int go = 0, freq;

 if (ssid->disabled != 2 || ssid->ssid == ((void*)0))
  return -1;

 if (wpas_get_p2p_group(wpa_s, ssid->ssid, ssid->ssid_len, &go) &&
     go == (ssid->mode == WPAS_MODE_P2P_GO)) {
  wpa_printf(MSG_DEBUG, "P2P: Requested persistent group is "
      "already running");
  if (go == 0 &&
      eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
      wpa_s->p2pdev, ((void*)0))) {
   wpa_printf(MSG_DEBUG,
       "P2P: Reschedule group formation timeout since peer is still trying to invite us");
   eloop_register_timeout(P2P_MAX_INITIAL_CONN_WAIT, 0,
            wpas_p2p_group_formation_timeout,
            wpa_s->p2pdev, ((void*)0));
  }
  return 0;
 }

 os_free(wpa_s->global->add_psk);
 wpa_s->global->add_psk = ((void*)0);


 wpas_p2p_stop_find_oper(wpa_s);

 wpa_s->p2p_fallback_to_go_neg = 0;

 if (ssid->mode == WPAS_MODE_P2P_GO) {
  if (force_freq > 0) {
   freq = wpas_p2p_select_go_freq(wpa_s, force_freq);
   if (freq < 0)
    return -1;
  } else {
   freq = wpas_p2p_select_go_freq(wpa_s, neg_freq);
   if (freq < 0 ||
       (freq > 0 && !freq_included(wpa_s, channels, freq)))
    freq = 0;
  }
 } else if (ssid->mode == WPAS_MODE_INFRA) {
  freq = neg_freq;
  if (freq <= 0 || !freq_included(wpa_s, channels, freq)) {
   struct os_reltime now;
   struct wpa_bss *bss =
    wpa_bss_get_p2p_dev_addr(wpa_s, ssid->bssid);

   os_get_reltime(&now);
   if (bss &&
       !os_reltime_expired(&now, &bss->last_update, 5) &&
       freq_included(wpa_s, channels, bss->freq))
    freq = bss->freq;
   else
    freq = 0;
  }

  return wpas_start_p2p_client(wpa_s, ssid, addr_allocated, freq,
          force_scan);
 } else {
  return -1;
 }

 if (wpas_p2p_init_go_params(wpa_s, &params, freq, vht_center_freq2,
        ht40, vht, max_oper_chwidth, he, channels))
  return -1;

 params.role_go = 1;
 params.psk_set = ssid->psk_set;
 if (params.psk_set)
  os_memcpy(params.psk, ssid->psk, sizeof(params.psk));
 if (ssid->passphrase) {
  if (os_strlen(ssid->passphrase) >= sizeof(params.passphrase)) {
   wpa_printf(MSG_ERROR, "P2P: Invalid passphrase in "
       "persistent group");
   return -1;
  }
  os_strlcpy(params.passphrase, ssid->passphrase,
      sizeof(params.passphrase));
 }
 os_memcpy(params.ssid, ssid->ssid, ssid->ssid_len);
 params.ssid_len = ssid->ssid_len;
 params.persistent_group = 1;

 wpa_s = wpas_p2p_get_group_iface(wpa_s, addr_allocated, 1);
 if (wpa_s == ((void*)0))
  return -1;

 p2p_channels_to_freqs(channels, params.freq_list, P2P_MAX_CHANNELS);

 wpa_s->p2p_first_connection_timeout = connection_timeout;
 wpas_start_wps_go(wpa_s, &params, 0);

 return 0;
}
