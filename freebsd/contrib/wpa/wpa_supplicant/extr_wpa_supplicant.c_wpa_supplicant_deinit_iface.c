
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int disconnected; struct wpa_supplicant* ssids_from_scan_req; int * conf; int * ifmsh; int * ctrl_iface; scalar_t__ drv_priv; int * received_mb_ies; int * fst; struct wpa_supplicant* next; int ifname; struct wpa_supplicant* parent; struct wpa_supplicant* p2pdev; struct wpa_global* global; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int WPA_EVENT_TERMINATING ;
 int fst_detach (int *) ;
 int os_free (struct wpa_supplicant*) ;
 int radio_remove_interface (struct wpa_supplicant*) ;
 int wpa_clear_keys (struct wpa_supplicant*,int *) ;
 int wpa_config_free (int *) ;
 int wpa_drv_deinit (struct wpa_supplicant*) ;
 int wpa_drv_set_countermeasures (struct wpa_supplicant*,int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wpa_supplicant_cleanup (struct wpa_supplicant*) ;
 int wpa_supplicant_ctrl_iface_deinit (int *) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_mesh_iface_deinit (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_remove_iface (struct wpa_global*,struct wpa_supplicant*,int) ;
 int wpabuf_free (int *) ;
 int wpas_ctrl_radio_work_flush (struct wpa_supplicant*) ;
 int wpas_notify_iface_removed (struct wpa_supplicant*) ;
 int wpas_p2p_deinit_iface (struct wpa_supplicant*) ;
 int wpas_p2p_group_remove (struct wpa_supplicant*,char*) ;

__attribute__((used)) static void wpa_supplicant_deinit_iface(struct wpa_supplicant *wpa_s,
     int notify, int terminate)
{
 struct wpa_global *global = wpa_s->global;
 struct wpa_supplicant *iface, *prev;

 if (wpa_s == wpa_s->parent)
  wpas_p2p_group_remove(wpa_s, "*");

 iface = global->ifaces;
 while (iface) {
  if (iface->p2pdev == wpa_s)
   iface->p2pdev = iface->parent;
  if (iface == wpa_s || iface->parent != wpa_s) {
   iface = iface->next;
   continue;
  }
  wpa_printf(MSG_DEBUG,
      "Remove remaining child interface %s from parent %s",
      iface->ifname, wpa_s->ifname);
  prev = iface;
  iface = iface->next;
  wpa_supplicant_remove_iface(global, prev, terminate);
 }

 wpa_s->disconnected = 1;
 if (wpa_s->drv_priv) {
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_DEAUTH_LEAVING);

  wpa_drv_set_countermeasures(wpa_s, 0);
  wpa_clear_keys(wpa_s, ((void*)0));
 }

 wpa_supplicant_cleanup(wpa_s);
 wpas_p2p_deinit_iface(wpa_s);

 wpas_ctrl_radio_work_flush(wpa_s);
 radio_remove_interface(wpa_s);
 if (wpa_s->drv_priv)
  wpa_drv_deinit(wpa_s);

 if (notify)
  wpas_notify_iface_removed(wpa_s);

 if (terminate)
  wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);

 if (wpa_s->ctrl_iface) {
  wpa_supplicant_ctrl_iface_deinit(wpa_s->ctrl_iface);
  wpa_s->ctrl_iface = ((void*)0);
 }
 if (wpa_s->conf != ((void*)0)) {
  wpa_config_free(wpa_s->conf);
  wpa_s->conf = ((void*)0);
 }

 os_free(wpa_s->ssids_from_scan_req);

 os_free(wpa_s);
}
