
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {scalar_t__ wpa_state; scalar_t__ assoc_freq; struct wpa_supplicant* next; TYPE_3__* global; TYPE_1__ hw; } ;
struct wpa_ssid {int frequency; int ht40; scalar_t__ he; int mode; scalar_t__ vht; scalar_t__ p2p_group; scalar_t__ ht; scalar_t__ disable_ht; } ;
struct hostapd_hw_modes {scalar_t__ mode; int ht_capab; TYPE_2__* he_capab; int vht_capab; } ;
struct hostapd_config {scalar_t__ hw_mode; int ieee80211n; int ht_capab; int secondary_channel; int ieee80211ac; int ieee80211ax; int no_pri_sec_switch; int vht_capab; int channel; } ;
struct TYPE_6__ {struct wpa_supplicant* ifaces; } ;
struct TYPE_5__ {scalar_t__ he_supported; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int HT_CAP_INFO_GREEN_FIELD ;
 int HT_CAP_INFO_MAX_AMSDU_SIZE ;
 int HT_CAP_INFO_RX_STBC_MASK ;
 int HT_CAP_INFO_SHORT_GI20MHZ ;
 int HT_CAP_INFO_SHORT_GI40MHZ ;
 int HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET ;
 int HT_CAP_INFO_TX_STBC ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ NUM_HOSTAPD_MODES ;
 scalar_t__ WPA_AUTHENTICATING ;
 scalar_t__ ieee80211_freq_to_chan (int,int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_conf_ap_vht (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*,struct hostapd_hw_modes*) ;
 size_t wpas_mode_to_ieee80211_mode (int ) ;
 int wpas_p2p_get_ht40_mode (struct wpa_supplicant*,struct hostapd_hw_modes*,int ) ;

int wpa_supplicant_conf_ap_ht(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid,
         struct hostapd_config *conf)
{
 conf->hw_mode = ieee80211_freq_to_chan(ssid->frequency,
            &conf->channel);

 if (conf->hw_mode == NUM_HOSTAPD_MODES) {
  wpa_printf(MSG_ERROR, "Unsupported AP mode frequency: %d MHz",
      ssid->frequency);
  return -1;
 }
 return 0;
}
