
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 scalar_t__ wpa_supplicant_req_sched_scan (struct wpa_supplicant*) ;

__attribute__((used)) static void
wpa_supplicant_delayed_sched_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 wpa_dbg(wpa_s, MSG_DEBUG, "Starting delayed sched scan");

 if (wpa_supplicant_req_sched_scan(wpa_s))
  wpa_supplicant_req_scan(wpa_s, 0, 0);
}
