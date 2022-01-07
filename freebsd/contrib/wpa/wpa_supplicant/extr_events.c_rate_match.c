
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct wpa_bss {scalar_t__ freq; } ;
struct hostapd_hw_modes {int num_channels; scalar_t__ mode; int num_rates; int* rates; TYPE_2__* channels; } ;
typedef int scan_ie ;
struct TYPE_4__ {int freq; } ;


 int const BSS_MEMBERSHIP_SELECTOR_HT_PHY ;
 int const BSS_MEMBERSHIP_SELECTOR_VHT_PHY ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int MSG_DEBUG ;
 int const WLAN_EID_EXT_SUPP_RATES ;
 int const WLAN_EID_SUPP_RATES ;
 int ht_supported (struct hostapd_hw_modes const*) ;
 int vht_supported (struct hostapd_hw_modes const*) ;
 int* wpa_bss_get_ie (struct wpa_bss*,int const) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;

__attribute__((used)) static int rate_match(struct wpa_supplicant *wpa_s, struct wpa_bss *bss,
        int debug_print)
{
 const struct hostapd_hw_modes *mode = ((void*)0), *modes;
 const u8 scan_ie[2] = { WLAN_EID_SUPP_RATES, WLAN_EID_EXT_SUPP_RATES };
 const u8 *rate_ie;
 int i, j, k;

 if (bss->freq == 0)
  return 1;

 modes = wpa_s->hw.modes;
 if (modes == ((void*)0)) {





  return 1;
 }

 for (i = 0; i < wpa_s->hw.num_modes; i++) {
  for (j = 0; j < modes[i].num_channels; j++) {
   int freq = modes[i].channels[j].freq;
   if (freq == bss->freq) {
    if (mode &&
        mode->mode == HOSTAPD_MODE_IEEE80211G)
     break;

    mode = &modes[i];
    break;
   }
  }
 }

 if (mode == ((void*)0))
  return 0;

 for (i = 0; i < (int) sizeof(scan_ie); i++) {
  rate_ie = wpa_bss_get_ie(bss, scan_ie[i]);
  if (rate_ie == ((void*)0))
   continue;

  for (j = 2; j < rate_ie[1] + 2; j++) {
   int flagged = !!(rate_ie[j] & 0x80);
   int r = (rate_ie[j] & 0x7f) * 5;
   if (flagged && ((rate_ie[j] & 0x7f) ==
     BSS_MEMBERSHIP_SELECTOR_HT_PHY)) {
    if (!ht_supported(mode)) {
     if (debug_print)
      wpa_dbg(wpa_s, MSG_DEBUG,
       "   hardware does not support HT PHY");
     return 0;
    }
    continue;
   }


   if (flagged && ((rate_ie[j] & 0x7f) ==
     BSS_MEMBERSHIP_SELECTOR_VHT_PHY)) {
    if (!vht_supported(mode)) {
     if (debug_print)
      wpa_dbg(wpa_s, MSG_DEBUG,
       "   hardware does not support VHT PHY");
     return 0;
    }
    continue;
   }

   if (!flagged)
    continue;


   for (k = 0; k < mode->num_rates; k++) {
    if (mode->rates[k] == r)
     break;
   }
   if (k == mode->num_rates) {





    if (debug_print)
     wpa_dbg(wpa_s, MSG_DEBUG,
      "   hardware does not support required rate %d.%d Mbps (freq=%d mode==%d num_rates=%d)",
      r / 10, r % 10,
      bss->freq, mode->mode, mode->num_rates);
    return 0;
   }
  }
 }

 return 1;
}
