
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct wpa_ssid {int frequency; } ;
struct hostapd_hw_modes {int mode; scalar_t__ vht_capab; } ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;


 int NUM_HOSTAPD_MODES ;
 int ieee80211_freq_to_chan (int ,int *) ;

__attribute__((used)) static int drv_supports_vht(struct wpa_supplicant *wpa_s,
       const struct wpa_ssid *ssid)
{
 enum hostapd_hw_mode hw_mode;
 struct hostapd_hw_modes *mode = ((void*)0);
 u8 channel;
 int i;

 hw_mode = ieee80211_freq_to_chan(ssid->frequency, &channel);
 if (hw_mode == NUM_HOSTAPD_MODES)
  return 0;
 for (i = 0; wpa_s->hw.modes && i < wpa_s->hw.num_modes; i++) {
  if (wpa_s->hw.modes[i].mode == hw_mode) {
   mode = &wpa_s->hw.modes[i];
   break;
  }
 }

 if (!mode)
  return 0;

 return mode->vht_capab != 0;
}
