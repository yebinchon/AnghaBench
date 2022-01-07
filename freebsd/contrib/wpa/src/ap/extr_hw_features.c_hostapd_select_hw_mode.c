
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int num_hw_features; int drv_flags; TYPE_1__* conf; int * bss; struct hostapd_hw_modes* current_mode; struct hostapd_hw_modes* hw_features; } ;
struct hostapd_hw_modes {scalar_t__ mode; } ;
struct TYPE_2__ {scalar_t__ hw_mode; int channel; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; scalar_t__ ieee80211n; } ;





 int HOSTAPD_LEVEL_WARNING ;
 scalar_t__ HOSTAPD_MODE_IEEE80211B ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int WPA_DRIVER_FLAGS_ACS_OFFLOAD ;
 int WPA_DRIVER_FLAGS_SUPPORT_HW_MODE_ANY ;
 int hostapd_check_chans (struct hostapd_iface*) ;
 int hostapd_logger (int ,int *,int ,int ,char*,int) ;
 int hostapd_notify_bad_chans (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

int hostapd_select_hw_mode(struct hostapd_iface *iface)
{
 int i;

 if (iface->num_hw_features < 1)
  return -1;

 if ((iface->conf->hw_mode == HOSTAPD_MODE_IEEE80211G ||
      iface->conf->ieee80211n || iface->conf->ieee80211ac ||
      iface->conf->ieee80211ax) &&
     iface->conf->channel == 14) {
  wpa_printf(MSG_INFO, "Disable OFDM/HT/VHT/HE on channel 14");
  iface->conf->hw_mode = HOSTAPD_MODE_IEEE80211B;
  iface->conf->ieee80211n = 0;
  iface->conf->ieee80211ac = 0;
  iface->conf->ieee80211ax = 0;
 }

 iface->current_mode = ((void*)0);
 for (i = 0; i < iface->num_hw_features; i++) {
  struct hostapd_hw_modes *mode = &iface->hw_features[i];
  if (mode->mode == iface->conf->hw_mode) {
   iface->current_mode = mode;
   break;
  }
 }

 if (iface->current_mode == ((void*)0)) {
  if (!(iface->drv_flags & WPA_DRIVER_FLAGS_ACS_OFFLOAD) ||
      !(iface->drv_flags & WPA_DRIVER_FLAGS_SUPPORT_HW_MODE_ANY))
  {
   wpa_printf(MSG_ERROR,
       "Hardware does not support configured mode");
   hostapd_logger(iface->bss[0], ((void*)0),
           HOSTAPD_MODULE_IEEE80211,
           HOSTAPD_LEVEL_WARNING,
           "Hardware does not support configured mode (%d) (hw_mode in hostapd.conf)",
           (int) iface->conf->hw_mode);
   return -2;
  }
 }

 switch (hostapd_check_chans(iface)) {
 case 128:
  return 0;
 case 130:
  return 1;
 case 129:
 default:
  hostapd_notify_bad_chans(iface);
  return -3;
 }
}
