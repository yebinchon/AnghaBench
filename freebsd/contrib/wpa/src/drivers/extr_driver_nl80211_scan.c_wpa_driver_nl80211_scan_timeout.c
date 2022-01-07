
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {scalar_t__ ap_scan_as_station; int first_bss; scalar_t__ vendor_scan_cookie; } ;


 int EVENT_SCAN_RESULTS ;
 int MSG_DEBUG ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ nl80211_abort_scan (int ) ;
 scalar_t__ nl80211_abort_vendor_scan (struct wpa_driver_nl80211_data*,scalar_t__) ;
 int wpa_driver_nl80211_set_mode (int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (void*,int ,int *) ;

void wpa_driver_nl80211_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_driver_nl80211_data *drv = eloop_ctx;

 wpa_printf(MSG_DEBUG, "nl80211: Scan timeout - try to abort it");





 if (!drv->vendor_scan_cookie &&
     nl80211_abort_scan(drv->first_bss) == 0)
  return;

 wpa_printf(MSG_DEBUG, "nl80211: Failed to abort scan");

 if (drv->ap_scan_as_station != NL80211_IFTYPE_UNSPECIFIED) {
  wpa_driver_nl80211_set_mode(drv->first_bss,
         drv->ap_scan_as_station);
  drv->ap_scan_as_station = NL80211_IFTYPE_UNSPECIFIED;
 }

 wpa_printf(MSG_DEBUG, "nl80211: Try to get scan results");
 wpa_supplicant_event(timeout_ctx, EVENT_SCAN_RESULTS, ((void*)0));
}
