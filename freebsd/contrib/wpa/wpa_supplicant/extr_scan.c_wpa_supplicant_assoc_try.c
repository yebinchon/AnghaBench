
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_ssid* prev_scan_ssid; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;


 int MSG_DEBUG ;
 void* WILDCARD_SSID_SCAN ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_associate (struct wpa_supplicant*,int *,struct wpa_ssid*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int,int ) ;
 int wpas_network_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;
 int wpas_temp_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static void wpa_supplicant_assoc_try(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid)
{
 int min_temp_disabled = 0;

 while (ssid) {
  if (!wpas_network_disabled(wpa_s, ssid)) {
   int temp_disabled = wpas_temp_disabled(wpa_s, ssid);

   if (temp_disabled <= 0)
    break;

   if (!min_temp_disabled ||
       temp_disabled < min_temp_disabled)
    min_temp_disabled = temp_disabled;
  }
  ssid = ssid->next;
 }


 if (ssid == ((void*)0)) {
  wpa_dbg(wpa_s, MSG_DEBUG, "wpa_supplicant_assoc_try: Reached "
   "end of scan list - go back to beginning");
  wpa_s->prev_scan_ssid = WILDCARD_SSID_SCAN;
  wpa_supplicant_req_scan(wpa_s, min_temp_disabled, 0);
  return;
 }
 if (ssid->next) {

  wpa_s->prev_scan_ssid = ssid;
 } else {

  wpa_s->prev_scan_ssid = WILDCARD_SSID_SCAN;
 }
 wpa_supplicant_associate(wpa_s, ((void*)0), ssid);
}
