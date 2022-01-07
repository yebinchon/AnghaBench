
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int drv_flags; struct wpa_global* global; TYPE_1__* conf; int ifname; struct wpa_supplicant* next; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct wpa_interface {scalar_t__ p2p_mgmt; int ifname; scalar_t__ ctrl_interface; scalar_t__ driver; } ;
struct TYPE_4__ {int conf_p2p_dev; scalar_t__ override_ctrl_interface; scalar_t__ override_driver; } ;
struct wpa_global {TYPE_2__ params; int p2p_disabled; int * p2p; struct wpa_supplicant* ifaces; } ;
struct TYPE_3__ {int p2p_disabled; struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_DISCONNECTED ;
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ) ;
 int wpa_printf (int ,char*,...) ;
 struct wpa_supplicant* wpa_supplicant_alloc (struct wpa_supplicant*) ;
 int wpa_supplicant_deinit_iface (struct wpa_supplicant*,int,int ) ;
 scalar_t__ wpa_supplicant_init_iface (struct wpa_supplicant*,struct wpa_interface*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;
 scalar_t__ wpas_notify_iface_added (struct wpa_supplicant*) ;
 int wpas_notify_network_added (struct wpa_supplicant*,struct wpa_ssid*) ;
 scalar_t__ wpas_p2p_add_p2pdev_interface (struct wpa_supplicant*,int ) ;

struct wpa_supplicant * wpa_supplicant_add_iface(struct wpa_global *global,
       struct wpa_interface *iface,
       struct wpa_supplicant *parent)
{
 struct wpa_supplicant *wpa_s;
 struct wpa_interface t_iface;
 struct wpa_ssid *ssid;

 if (global == ((void*)0) || iface == ((void*)0))
  return ((void*)0);

 wpa_s = wpa_supplicant_alloc(parent);
 if (wpa_s == ((void*)0))
  return ((void*)0);

 wpa_s->global = global;

 t_iface = *iface;
 if (global->params.override_driver) {
  wpa_printf(MSG_DEBUG, "Override interface parameter: driver "
      "('%s' -> '%s')",
      iface->driver, global->params.override_driver);
  t_iface.driver = global->params.override_driver;
 }
 if (global->params.override_ctrl_interface) {
  wpa_printf(MSG_DEBUG, "Override interface parameter: "
      "ctrl_interface ('%s' -> '%s')",
      iface->ctrl_interface,
      global->params.override_ctrl_interface);
  t_iface.ctrl_interface =
   global->params.override_ctrl_interface;
 }
 if (wpa_supplicant_init_iface(wpa_s, &t_iface)) {
  wpa_printf(MSG_DEBUG, "Failed to add interface %s",
      iface->ifname);
  wpa_supplicant_deinit_iface(wpa_s, 0, 0);
  return ((void*)0);
 }

 if (iface->p2p_mgmt == 0) {

  if (wpas_notify_iface_added(wpa_s)) {
   wpa_supplicant_deinit_iface(wpa_s, 1, 0);
   return ((void*)0);
  }

  for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next)
   wpas_notify_network_added(wpa_s, ssid);
 }

 wpa_s->next = global->ifaces;
 global->ifaces = wpa_s;

 wpa_dbg(wpa_s, MSG_DEBUG, "Added interface %s", wpa_s->ifname);
 wpa_supplicant_set_state(wpa_s, WPA_DISCONNECTED);
 return wpa_s;
}
