
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; TYPE_2__* conf; TYPE_1__* driver; } ;
struct TYPE_4__ {int ap_scan; } ;
struct TYPE_3__ {int name; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ WPA_ASSOCIATING ;
 scalar_t__ WPA_COMPLETED ;
 scalar_t__ os_strcmp (int ,char*) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_notify_ap_scan_changed (struct wpa_supplicant*) ;

int wpa_supplicant_set_ap_scan(struct wpa_supplicant *wpa_s, int ap_scan)
{

 int old_ap_scan;

 if (ap_scan < 0 || ap_scan > 2)
  return -1;

 if (ap_scan == 2 && os_strcmp(wpa_s->driver->name, "nl80211") == 0) {
  wpa_printf(MSG_INFO,
      "Note: nl80211 driver interface is not designed to be used with ap_scan=2; this can result in connection failures");
 }
 old_ap_scan = wpa_s->conf->ap_scan;
 wpa_s->conf->ap_scan = ap_scan;

 if (old_ap_scan != wpa_s->conf->ap_scan)
  wpas_notify_ap_scan_changed(wpa_s);

 return 0;
}
