
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; int confname; } ;
struct TYPE_2__ {int update_config; } ;


 int MSG_DEBUG ;
 int wpa_config_write (int ,TYPE_1__*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_save_config(struct wpa_supplicant *wpa_s)
{
 int ret;

 if (!wpa_s->conf->update_config) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Not allowed "
      "to update configuration (update_config=0)");
  return -1;
 }

 ret = wpa_config_write(wpa_s->confname, wpa_s->conf);
 if (ret) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Failed to "
      "update configuration");
 } else {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: SAVE_CONFIG - Configuration"
      " updated");
 }

 return ret;
}
