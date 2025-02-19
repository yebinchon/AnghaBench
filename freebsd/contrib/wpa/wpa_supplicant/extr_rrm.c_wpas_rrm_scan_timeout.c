
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wpa_driver_scan_params {scalar_t__ duration; } ;
struct TYPE_2__ {struct wpa_driver_scan_params scan_params; } ;
struct wpa_supplicant {int drv_rrm_flags; scalar_t__ scanning; int beacon_rep_scan; int current_bss; TYPE_1__ beacon_rep_data; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL ;
 int os_get_reltime (int *) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_supplicant_trigger_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 scalar_t__ wpas_p2p_in_progress (struct wpa_supplicant*) ;
 int wpas_rrm_refuse_request (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_rrm_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct wpa_driver_scan_params *params =
  &wpa_s->beacon_rep_data.scan_params;
 u16 prev_duration = params->duration;

 if (!wpa_s->current_bss)
  return;

 if (!(wpa_s->drv_rrm_flags & WPA_DRIVER_FLAGS_SUPPORT_SET_SCAN_DWELL) &&
     params->duration) {
  wpa_printf(MSG_DEBUG,
      "RRM: Cannot set scan duration due to missing driver support");
  params->duration = 0;
 }
 os_get_reltime(&wpa_s->beacon_rep_scan);
 if (wpa_s->scanning || wpas_p2p_in_progress(wpa_s) ||
     wpa_supplicant_trigger_scan(wpa_s, params))
  wpas_rrm_refuse_request(wpa_s);
 params->duration = prev_duration;
}
