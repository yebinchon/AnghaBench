
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * modes; } ;
struct wpa_supplicant {scalar_t__ setband; TYPE_1__ hw; } ;
struct wpa_driver_scan_params {scalar_t__ freqs; } ;


 int HOSTAPD_MODE_IEEE80211A ;
 int HOSTAPD_MODE_IEEE80211G ;
 scalar_t__ WPA_SETBAND_2G ;
 scalar_t__ WPA_SETBAND_5G ;
 int wpa_setband_scan_freqs_list (struct wpa_supplicant*,int ,struct wpa_driver_scan_params*) ;

__attribute__((used)) static void wpa_setband_scan_freqs(struct wpa_supplicant *wpa_s,
       struct wpa_driver_scan_params *params)
{
 if (wpa_s->hw.modes == ((void*)0))
  return;
 if (params->freqs)
  return;
 if (wpa_s->setband == WPA_SETBAND_5G)
  wpa_setband_scan_freqs_list(wpa_s, HOSTAPD_MODE_IEEE80211A,
         params);
 else if (wpa_s->setband == WPA_SETBAND_2G)
  wpa_setband_scan_freqs_list(wpa_s, HOSTAPD_MODE_IEEE80211G,
         params);
}
