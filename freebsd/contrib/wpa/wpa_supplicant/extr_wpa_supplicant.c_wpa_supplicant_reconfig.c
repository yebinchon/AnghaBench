
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;
 scalar_t__ wpa_debug_reopen_file () ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_supplicant_reload_configuration (struct wpa_supplicant*) ;
 int wpa_supplicant_terminate_proc (struct wpa_global*) ;

__attribute__((used)) static void wpa_supplicant_reconfig(int sig, void *signal_ctx)
{
 struct wpa_global *global = signal_ctx;
 struct wpa_supplicant *wpa_s;
 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Signal %d received - reconfiguring",
   sig);
  if (wpa_supplicant_reload_configuration(wpa_s) < 0) {
   wpa_supplicant_terminate_proc(global);
  }
 }

 if (wpa_debug_reopen_file() < 0) {

  wpa_printf(MSG_DEBUG, "Could not reopen debug log file");
 }
}
