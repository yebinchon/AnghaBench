
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_scan_work; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int P2P_EVENT_FIND_STOPPED ;
 int wpa_msg_global (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpas_abort_ongoing_scan (struct wpa_supplicant*) ;
 int wpas_notify_p2p_find_stopped (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_find_stopped(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;

 if (wpa_s->p2p_scan_work && wpas_abort_ongoing_scan(wpa_s) < 0)
  wpa_printf(MSG_DEBUG, "P2P: Abort ongoing scan failed");

 wpa_msg_global(wpa_s, MSG_INFO, P2P_EVENT_FIND_STOPPED);
 wpas_notify_p2p_find_stopped(wpa_s);
}
