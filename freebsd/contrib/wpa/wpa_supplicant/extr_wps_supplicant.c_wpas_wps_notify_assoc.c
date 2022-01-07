
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_ap_info {int last_attempt; int tries; } ;
struct wpa_supplicant {int wps_ap_iter; scalar_t__ after_wps; } ;


 int os_get_reltime (int *) ;
 struct wps_ap_info* wpas_wps_get_ap_info (struct wpa_supplicant*,int const*) ;

void wpas_wps_notify_assoc(struct wpa_supplicant *wpa_s, const u8 *bssid)
{
 struct wps_ap_info *ap;

 wpa_s->after_wps = 0;

 if (!wpa_s->wps_ap_iter)
  return;
 ap = wpas_wps_get_ap_info(wpa_s, bssid);
 if (ap == ((void*)0))
  return;
 ap->tries++;
 os_get_reltime(&ap->last_attempt);
}
