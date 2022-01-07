
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int assoc_freq; int current_ssid; } ;


 int WPS_RF_24GHZ ;
 int WPS_RF_50GHZ ;
 int WPS_RF_60GHZ ;

__attribute__((used)) static int wpa_supplicant_wps_rf_band(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;

 if (!wpa_s->current_ssid || !wpa_s->assoc_freq)
  return 0;

 return (wpa_s->assoc_freq > 50000) ? WPS_RF_60GHZ :
  (wpa_s->assoc_freq > 2484) ? WPS_RF_50GHZ : WPS_RF_24GHZ;
}
