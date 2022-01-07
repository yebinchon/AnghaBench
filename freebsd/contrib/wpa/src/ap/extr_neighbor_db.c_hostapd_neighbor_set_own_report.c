
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct wpa_ssid_value {int ssid_len; int ssid; } ;
struct hostapd_data {TYPE_4__* iconf; int own_addr; TYPE_3__* iface; TYPE_2__* conf; } ;
typedef enum nr_chan_width { ____Placeholder_nr_chan_width } nr_chan_width ;
struct TYPE_10__ {int ieee80211ax; int secondary_channel; int stationary_ap; int civic; int lci; scalar_t__ ieee80211ac; scalar_t__ ieee80211n; } ;
struct TYPE_9__ {int drv_flags; scalar_t__ freq; } ;
struct TYPE_7__ {int ssid; int ssid_len; } ;
struct TYPE_8__ {int* radio_measurements; TYPE_1__ ssid; scalar_t__ wmm_uapsd; scalar_t__ wmm_enabled; int disable_11ac; int disable_11n; } ;


 scalar_t__ ETH_ALEN ;
 int NEI_REP_BSSID_INFO_APSD ;
 int NEI_REP_BSSID_INFO_DELAYED_BA ;
 int NEI_REP_BSSID_INFO_HT ;
 int NEI_REP_BSSID_INFO_KEY_SCOPE ;
 int NEI_REP_BSSID_INFO_QOS ;
 int NEI_REP_BSSID_INFO_RM ;
 int NEI_REP_BSSID_INFO_SECURITY ;
 int NEI_REP_BSSID_INFO_SPECTRUM_MGMT ;
 int NEI_REP_BSSID_INFO_VHT ;
 int NR_CHAN_WIDTH_80P80 ;
 scalar_t__ NUM_HOSTAPD_MODES ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int WLAN_RRM_CAPS_NEIGHBOR_REPORT ;
 int WNM_NEIGHBOR_WIDE_BW_CHAN ;
 int WPA_DRIVER_FLAGS_AP_UAPSD ;
 int hostapd_get_nr_chan_width (struct hostapd_data*,int,int,int) ;
 int hostapd_get_oper_centr_freq_seg0_idx (TYPE_4__*) ;
 int hostapd_get_oper_centr_freq_seg1_idx (TYPE_4__*) ;
 int hostapd_get_oper_chwidth (TYPE_4__*) ;
 int hostapd_neighbor_set (struct hostapd_data*,int ,struct wpa_ssid_value*,struct wpabuf*,int ,int ,int ) ;
 int hostapd_own_capab_info (struct hostapd_data*) ;
 int ieee80211_freq_to_chan (scalar_t__,int*) ;
 scalar_t__ ieee80211_freq_to_channel_ext (scalar_t__,int,int ,int*,int*) ;
 int ieee80211_get_phy_type (scalar_t__,int,int) ;
 int os_memcpy (int ,int ,int ) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_le32 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void hostapd_neighbor_set_own_report(struct hostapd_data *hapd)
{
}
