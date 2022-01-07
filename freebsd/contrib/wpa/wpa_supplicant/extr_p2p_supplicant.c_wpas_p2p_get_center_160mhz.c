
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct hostapd_hw_modes {scalar_t__ mode; } ;


 unsigned int ARRAY_SIZE (int*) ;
 scalar_t__ HOSTAPD_MODE_IEEE80211A ;

__attribute__((used)) static int wpas_p2p_get_center_160mhz(struct wpa_supplicant *wpa_s,
         struct hostapd_hw_modes *mode,
         u8 channel)
{
 u8 center_channels[] = { 50, 114 };
 unsigned int i;

 if (mode->mode != HOSTAPD_MODE_IEEE80211A)
  return 0;

 for (i = 0; i < ARRAY_SIZE(center_channels); i++)




  if (channel >= center_channels[i] - 14 &&
      channel <= center_channels[i] + 14)
   return center_channels[i];

 return 0;
}
