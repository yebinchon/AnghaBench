
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int added_vif; } ;
struct wpa_global {int ifaces; } ;


 int MSG_DEBUG ;
 int WPA_IF_STATION ;
 int wpa_drv_if_remove (int ,int ,char*) ;
 int wpa_printf (int ,char*,char*) ;
 struct wpa_supplicant* wpa_supplicant_get_iface (struct wpa_global*,char*) ;
 int wpa_supplicant_remove_iface (struct wpa_global*,struct wpa_supplicant*,int ) ;

__attribute__((used)) static int wpa_supplicant_global_iface_remove(struct wpa_global *global,
           char *cmd)
{
 struct wpa_supplicant *wpa_s;
 int ret;
 unsigned int delete_iface;

 wpa_printf(MSG_DEBUG, "CTRL_IFACE GLOBAL INTERFACE_REMOVE '%s'", cmd);

 wpa_s = wpa_supplicant_get_iface(global, cmd);
 if (wpa_s == ((void*)0))
  return -1;
 delete_iface = wpa_s->added_vif;
 ret = wpa_supplicant_remove_iface(global, wpa_s, 0);
 if (!ret && delete_iface) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE deleting the interface '%s'",
      cmd);
  ret = wpa_drv_if_remove(global->ifaces, WPA_IF_STATION, cmd);
 }
 return ret;
}
