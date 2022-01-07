
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int confname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct TYPE_2__ {int update_config; } ;


 int MSG_DEBUG ;
 scalar_t__ wpa_config_write (int ,TYPE_1__*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static int wpas_global_ctrl_iface_save_config(struct wpa_global *global)
{
 int ret = 0, saved = 0;
 struct wpa_supplicant *wpa_s;

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (!wpa_s->conf->update_config) {
   wpa_dbg(wpa_s, MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Not allowed to update configuration (update_config=0)");
   continue;
  }

  if (wpa_config_write(wpa_s->confname, wpa_s->conf)) {
   wpa_dbg(wpa_s, MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Failed to update configuration");
   ret = 1;
  } else {
   wpa_dbg(wpa_s, MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Configuration updated");
   saved++;
  }
 }

 if (!saved && !ret) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "CTRL_IFACE: SAVE_CONFIG - No configuration files could be updated");
  ret = 1;
 }

 return ret;
}
