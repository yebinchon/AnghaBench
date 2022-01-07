
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_first_connection_timeout; int ifname; scalar_t__ p2p_go_do_acs; int p2p_go_acs_band; struct wpa_supplicant* p2pdev; struct wpa_supplicant* parent; scalar_t__ p2p_mgmt; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_IF_P2P_CLIENT ;
 int WPA_IF_P2P_GO ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg_global (struct wpa_supplicant*,int ,char*) ;
 scalar_t__ wpas_p2p_add_group_interface (struct wpa_supplicant*,int ) ;
 int wpas_p2p_clone_config (struct wpa_supplicant*,struct wpa_supplicant*) ;
 int wpas_p2p_create_iface (struct wpa_supplicant*) ;
 struct wpa_supplicant* wpas_p2p_init_group_interface (struct wpa_supplicant*,int) ;
 int wpas_p2p_remove_pending_group_interface (struct wpa_supplicant*) ;

__attribute__((used)) static struct wpa_supplicant *
wpas_p2p_get_group_iface(struct wpa_supplicant *wpa_s, int addr_allocated,
    int go)
{
 struct wpa_supplicant *group_wpa_s;

 if (!wpas_p2p_create_iface(wpa_s)) {
  if (wpa_s->p2p_mgmt) {





   wpa_s->parent->p2pdev = wpa_s;
   wpa_s = wpa_s->parent;
  }
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Use primary interface for group operations");
  wpa_s->p2p_first_connection_timeout = 0;
  if (wpa_s != wpa_s->p2pdev)
   wpas_p2p_clone_config(wpa_s, wpa_s->p2pdev);
  return wpa_s;
 }

 if (wpas_p2p_add_group_interface(wpa_s, go ? WPA_IF_P2P_GO :
      WPA_IF_P2P_CLIENT) < 0) {
  wpa_msg_global(wpa_s, MSG_ERROR,
          "P2P: Failed to add group interface");
  return ((void*)0);
 }
 group_wpa_s = wpas_p2p_init_group_interface(wpa_s, go);
 if (group_wpa_s == ((void*)0)) {
  wpa_msg_global(wpa_s, MSG_ERROR,
          "P2P: Failed to initialize group interface");
  wpas_p2p_remove_pending_group_interface(wpa_s);
  return ((void*)0);
 }

 if (go && wpa_s->p2p_go_do_acs) {
  group_wpa_s->p2p_go_do_acs = wpa_s->p2p_go_do_acs;
  group_wpa_s->p2p_go_acs_band = wpa_s->p2p_go_acs_band;
  wpa_s->p2p_go_do_acs = 0;
 }

 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Use separate group interface %s",
  group_wpa_s->ifname);
 group_wpa_s->p2p_first_connection_timeout = 0;
 return group_wpa_s;
}
