
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct hostapd_hw_modes {int dummy; } ;


 int BW160 ;
 int wpas_p2p_get_center_160mhz (struct wpa_supplicant*,struct hostapd_hw_modes*,int ) ;
 int wpas_p2p_verify_channel (struct wpa_supplicant*,struct hostapd_hw_modes*,int ,int ) ;

int wpas_p2p_get_vht160_center(struct wpa_supplicant *wpa_s,
          struct hostapd_hw_modes *mode, u8 channel)
{
 if (!wpas_p2p_verify_channel(wpa_s, mode, channel, BW160))
  return 0;
 return wpas_p2p_get_center_160mhz(wpa_s, mode, channel);
}
