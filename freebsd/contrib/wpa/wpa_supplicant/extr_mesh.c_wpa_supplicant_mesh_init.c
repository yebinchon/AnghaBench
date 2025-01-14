
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_modes; int modes; } ;
struct wpa_supplicant {int* own_addr; int assoc_freq; int ifname; TYPE_2__* conf; TYPE_1__ hw; struct wpa_ssid* current_ssid; int drv_priv; int driver; struct hostapd_iface* ifmsh; int drv_flags; } ;
struct wpa_ssid {int frequency; int ht40; scalar_t__ max_oper_chwidth; int vht_center_freq2; int* mesh_basic_rates; scalar_t__ vht; } ;
struct mesh_conf {int dummy; } ;
struct hostapd_iface {int num_bss; struct mesh_conf* mconf; struct hostapd_data** bss; struct hostapd_config* conf; int drv_flags; } ;
struct hostapd_freq_params {int freq; int sec_channel_offset; } ;
struct hostapd_data {int* own_addr; TYPE_3__* conf; int dot11RSNASAERetransPeriod; int max_plinks; struct hostapd_config* iconf; int mesh_sta_free_cb; struct hostapd_iface* iface; int drv_priv; int driver; struct wpa_supplicant* msg_ctx; } ;
struct hostapd_config {int ieee80211h; int ieee80211d; char* country; scalar_t__ hw_mode; int channel; int secondary_channel; scalar_t__ vht_oper_chwidth; int vht_oper_centr_freq_seg0_idx; int vht_oper_centr_freq_seg1_idx; int* basic_rates; TYPE_3__** bss; } ;
typedef int basic_rates_erp ;
struct TYPE_6__ {int start_disabled; int iface; int ap_max_inactivity; int mesh; } ;
struct TYPE_5__ {char* country; int dot11RSNASAERetransPeriod; int max_peer_links; int mesh_max_inactivity; int user_mpm; } ;





 scalar_t__ DEFAULT_MAX_OPER_CHWIDTH ;
 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int MESH_ENABLED ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 scalar_t__ NUM_HOSTAPD_MODES ;
 struct hostapd_data* hostapd_alloc_bss_data (int *,int *,int *) ;
 struct hostapd_iface* hostapd_alloc_iface () ;
 struct hostapd_config* hostapd_config_defaults () ;
 scalar_t__ hostapd_setup_interface (struct hostapd_iface*) ;
 scalar_t__ ieee80211_freq_to_chan (int,int*) ;
 scalar_t__ ieee80211_is_dfs (int,int ,int ) ;
 struct mesh_conf* mesh_config_create (struct wpa_supplicant*,struct wpa_ssid*) ;
 int mesh_mpm_free_sta ;
 void* os_calloc (int,int) ;
 int os_memcpy (int*,int*,int) ;
 int* os_memdup (int*,int) ;
 int os_strlcpy (int ,int ,int) ;
 scalar_t__ wpa_drv_init_mesh (struct wpa_supplicant*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_conf_ap_ht (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*) ;
 int wpa_supplicant_mesh_deinit (struct wpa_supplicant*) ;

__attribute__((used)) static int wpa_supplicant_mesh_init(struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid,
        struct hostapd_freq_params *freq)
{
 struct hostapd_iface *ifmsh;
 struct hostapd_data *bss;
 struct hostapd_config *conf;
 struct mesh_conf *mconf;
 int basic_rates_erp[] = { 10, 20, 55, 60, 110, 120, 240, -1 };
 int rate_len;
 int frequency;

 if (!wpa_s->conf->user_mpm) {

  wpa_msg(wpa_s, MSG_WARNING,
   "user_mpm is not enabled in configuration");
  return 0;
 }

 wpa_s->ifmsh = ifmsh = hostapd_alloc_iface();
 if (!ifmsh)
  return -ENOMEM;

 ifmsh->drv_flags = wpa_s->drv_flags;
 ifmsh->num_bss = 1;
 ifmsh->bss = os_calloc(wpa_s->ifmsh->num_bss,
          sizeof(struct hostapd_data *));
 if (!ifmsh->bss)
  goto out_free;

 ifmsh->bss[0] = bss = hostapd_alloc_bss_data(((void*)0), ((void*)0), ((void*)0));
 if (!bss)
  goto out_free;

 ifmsh->bss[0]->msg_ctx = wpa_s;
 os_memcpy(bss->own_addr, wpa_s->own_addr, ETH_ALEN);
 bss->driver = wpa_s->driver;
 bss->drv_priv = wpa_s->drv_priv;
 bss->iface = ifmsh;
 bss->mesh_sta_free_cb = mesh_mpm_free_sta;
 frequency = ssid->frequency;
 if (frequency != freq->freq &&
     frequency == freq->freq + freq->sec_channel_offset * 20) {
  wpa_printf(MSG_DEBUG, "mesh: pri/sec channels switched");
  frequency = freq->freq;
 }
 wpa_s->assoc_freq = frequency;
 wpa_s->current_ssid = ssid;


 conf = hostapd_config_defaults();
 if (!conf)
  goto out_free;

 bss->conf = *conf->bss;
 bss->conf->start_disabled = 1;
 bss->conf->mesh = MESH_ENABLED;
 bss->conf->ap_max_inactivity = wpa_s->conf->mesh_max_inactivity;

 if (ieee80211_is_dfs(ssid->frequency, wpa_s->hw.modes,
        wpa_s->hw.num_modes) && wpa_s->conf->country[0]) {
  conf->ieee80211h = 1;
  conf->ieee80211d = 1;
  conf->country[0] = wpa_s->conf->country[0];
  conf->country[1] = wpa_s->conf->country[1];
  conf->country[2] = ' ';
 }

 bss->iconf = conf;
 ifmsh->conf = conf;

 ifmsh->bss[0]->max_plinks = wpa_s->conf->max_peer_links;
 ifmsh->bss[0]->dot11RSNASAERetransPeriod =
  wpa_s->conf->dot11RSNASAERetransPeriod;
 os_strlcpy(bss->conf->iface, wpa_s->ifname, sizeof(bss->conf->iface));

 mconf = mesh_config_create(wpa_s, ssid);
 if (!mconf)
  goto out_free;
 ifmsh->mconf = mconf;


 conf->hw_mode = ieee80211_freq_to_chan(frequency, &conf->channel);
 if (conf->hw_mode == NUM_HOSTAPD_MODES) {
  wpa_printf(MSG_ERROR, "Unsupported mesh mode frequency: %d MHz",
      frequency);
  goto out_free;
 }
 if (ssid->ht40)
  conf->secondary_channel = ssid->ht40;
 if (conf->hw_mode == HOSTAPD_MODE_IEEE80211A && ssid->vht) {
  if (ssid->max_oper_chwidth != DEFAULT_MAX_OPER_CHWIDTH)
   conf->vht_oper_chwidth = ssid->max_oper_chwidth;
  switch (conf->vht_oper_chwidth) {
  case 129:
  case 128:
   ieee80211_freq_to_chan(
    frequency,
    &conf->vht_oper_centr_freq_seg0_idx);
   conf->vht_oper_centr_freq_seg0_idx += ssid->ht40 * 2;
   break;
  case 130:
   ieee80211_freq_to_chan(
    frequency,
    &conf->vht_oper_centr_freq_seg0_idx);
   conf->vht_oper_centr_freq_seg0_idx += ssid->ht40 * 2;
   conf->vht_oper_centr_freq_seg0_idx += 40 / 5;
   break;
  }
  ieee80211_freq_to_chan(ssid->vht_center_freq2,
           &conf->vht_oper_centr_freq_seg1_idx);
 }

 if (ssid->mesh_basic_rates == ((void*)0)) {







  if (conf->hw_mode == HOSTAPD_MODE_IEEE80211G) {
   conf->basic_rates = os_memdup(basic_rates_erp,
            sizeof(basic_rates_erp));
   if (!conf->basic_rates)
    goto out_free;
  }
 } else {
  rate_len = 0;
  while (1) {
   if (ssid->mesh_basic_rates[rate_len] < 1)
    break;
   rate_len++;
  }
  conf->basic_rates = os_calloc(rate_len + 1, sizeof(int));
  if (conf->basic_rates == ((void*)0))
   goto out_free;
  os_memcpy(conf->basic_rates, ssid->mesh_basic_rates,
     rate_len * sizeof(int));
  conf->basic_rates[rate_len] = -1;
 }

 if (wpa_drv_init_mesh(wpa_s)) {
  wpa_msg(wpa_s, MSG_ERROR, "Failed to init mesh in driver");
  return -1;
 }

 if (hostapd_setup_interface(ifmsh)) {
  wpa_printf(MSG_ERROR,
      "Failed to initialize hostapd interface for mesh");
  return -1;
 }

 wpa_supplicant_conf_ap_ht(wpa_s, ssid, conf);

 return 0;
out_free:
 wpa_supplicant_mesh_deinit(wpa_s);
 return -ENOMEM;
}
