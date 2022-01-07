
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_modes; TYPE_1__* modes; } ;
struct wpa_supplicant {TYPE_2__ hw; } ;
struct TYPE_3__ {scalar_t__ num_channels; scalar_t__ mode; } ;


 unsigned int BAND_2_4_GHZ ;
 unsigned int BAND_5_GHZ ;
 unsigned int BAND_60_GHZ ;
 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 scalar_t__ HOSTAPD_MODE_IEEE80211AD ;
 scalar_t__ HOSTAPD_MODE_IEEE80211ANY ;
 scalar_t__ HOSTAPD_MODE_IEEE80211B ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 unsigned int wpas_freq_to_band (int const) ;

unsigned int wpas_get_bands(struct wpa_supplicant *wpa_s, const int *freqs)
{
 int i;
 unsigned int band = 0;

 if (freqs) {

  for (i = 0; freqs[i]; i++)
   band |= wpas_freq_to_band(freqs[i]);
 } else {




  for (i = 0; i < wpa_s->hw.num_modes; i++) {
   if (wpa_s->hw.modes[i].num_channels != 0) {
    if (wpa_s->hw.modes[i].mode ==
        HOSTAPD_MODE_IEEE80211B ||
        wpa_s->hw.modes[i].mode ==
        HOSTAPD_MODE_IEEE80211G)
     band |= BAND_2_4_GHZ;
    else if (wpa_s->hw.modes[i].mode ==
      HOSTAPD_MODE_IEEE80211A)
     band |= BAND_5_GHZ;
    else if (wpa_s->hw.modes[i].mode ==
      HOSTAPD_MODE_IEEE80211AD)
     band |= BAND_60_GHZ;
    else if (wpa_s->hw.modes[i].mode ==
      HOSTAPD_MODE_IEEE80211ANY)
     band = BAND_2_4_GHZ | BAND_5_GHZ |
      BAND_60_GHZ;
   }
  }
 }

 return band;
}
