
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_bss {int id; } ;


 int WPA_BSS_FREQ_CHANGED_FLAG ;
 int WPA_BSS_IES_CHANGED_FLAG ;
 int WPA_BSS_MODE_CHANGED_FLAG ;
 int WPA_BSS_PRIVACY_CHANGED_FLAG ;
 int WPA_BSS_RATES_CHANGED_FLAG ;
 int WPA_BSS_RSNIE_CHANGED_FLAG ;
 int WPA_BSS_SIGNAL_CHANGED_FLAG ;
 int WPA_BSS_WPAIE_CHANGED_FLAG ;
 int WPA_BSS_WPS_CHANGED_FLAG ;
 int wpas_notify_bss_freq_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_ies_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_mode_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_privacy_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_rates_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_rsnie_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_seen (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_signal_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_wpaie_changed (struct wpa_supplicant*,int ) ;
 int wpas_notify_bss_wps_changed (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void notify_bss_changes(struct wpa_supplicant *wpa_s, u32 changes,
          const struct wpa_bss *bss)
{
 if (changes & WPA_BSS_FREQ_CHANGED_FLAG)
  wpas_notify_bss_freq_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_SIGNAL_CHANGED_FLAG)
  wpas_notify_bss_signal_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_PRIVACY_CHANGED_FLAG)
  wpas_notify_bss_privacy_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_MODE_CHANGED_FLAG)
  wpas_notify_bss_mode_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_WPAIE_CHANGED_FLAG)
  wpas_notify_bss_wpaie_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_RSNIE_CHANGED_FLAG)
  wpas_notify_bss_rsnie_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_WPS_CHANGED_FLAG)
  wpas_notify_bss_wps_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_IES_CHANGED_FLAG)
  wpas_notify_bss_ies_changed(wpa_s, bss->id);

 if (changes & WPA_BSS_RATES_CHANGED_FLAG)
  wpas_notify_bss_rates_changed(wpa_s, bss->id);

 wpas_notify_bss_seen(wpa_s, bss->id);
}
