
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int group_formation_reported; scalar_t__ p2p_group_interface; int show_group_started; TYPE_1__* global; int p2pdev; int p2p_group; struct wpa_ssid* current_ssid; scalar_t__ p2p_in_invitation; scalar_t__ p2p_in_provisioning; scalar_t__ p2p_go_group_formation_completed; } ;
struct wpa_ssid {scalar_t__ mode; int p2p_persistent_group; int * passphrase; int * psk; scalar_t__ psk_set; int frequency; int ssid_len; int ssid; } ;
struct TYPE_2__ {int p2p_go_wait_client; int * add_psk; int p2p_dev_addr; struct wpa_supplicant* p2p_group_formation; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int P2P_EVENT_GROUP_FORMATION_FAILURE ;
 int P2P_EVENT_GROUP_FORMATION_SUCCESS ;
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ;
 int P2P_GROUP_REMOVAL_FORMATION_FAILED ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ;
 int os_free (int *) ;
 int os_get_reltime (int *) ;
 int os_memcpy (int *,int ,int) ;
 int os_memset (int *,int ,int) ;
 int p2p_group_notif_formation_done (int ) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_msg_global (int ,int ,int ) ;
 int wpa_supplicant_ap_mac_addr_filter (struct wpa_supplicant*,int *) ;
 int wpas_notify_p2p_group_formation_failure (struct wpa_supplicant*,char*) ;
 int wpas_notify_p2p_group_started (struct wpa_supplicant*,struct wpa_ssid*,int,int ,int *) ;
 int wpas_p2p_cross_connect_setup (struct wpa_supplicant*) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;
 int wpas_p2p_group_started (struct wpa_supplicant*,int,struct wpa_ssid*,int ,int *,int *,int *,int,char*) ;
 int wpas_p2p_persistent_group (struct wpa_supplicant*,int *,int ,int ) ;
 int wpas_p2p_set_group_idle_timeout (struct wpa_supplicant*) ;
 int wpas_p2p_store_persistent_group (int ,struct wpa_ssid*,int *) ;

__attribute__((used)) static void wpas_group_formation_completed(struct wpa_supplicant *wpa_s,
        int success, int already_deleted)
{
 struct wpa_ssid *ssid;
 int client;
 int persistent;
 u8 go_dev_addr[ETH_ALEN];






 if (wpa_s->global->p2p_group_formation)
  wpa_s = wpa_s->global->p2p_group_formation;
 if (wpa_s->p2p_go_group_formation_completed) {
  wpa_s->global->p2p_group_formation = ((void*)0);
  wpa_s->p2p_in_provisioning = 0;
 } else if (wpa_s->p2p_in_provisioning && !success) {
  wpa_msg(wpa_s, MSG_DEBUG,
   "P2P: Stop provisioning state due to failure");
  wpa_s->p2p_in_provisioning = 0;
 }
 wpa_s->p2p_in_invitation = 0;
 wpa_s->group_formation_reported = 1;

 if (!success) {
  wpa_msg_global(wpa_s->p2pdev, MSG_INFO,
          P2P_EVENT_GROUP_FORMATION_FAILURE);
  wpas_notify_p2p_group_formation_failure(wpa_s, "");
  if (already_deleted)
   return;
  wpas_p2p_group_delete(wpa_s,
          P2P_GROUP_REMOVAL_FORMATION_FAILED);
  return;
 }

 wpa_msg_global(wpa_s->p2pdev, MSG_INFO,
         P2P_EVENT_GROUP_FORMATION_SUCCESS);

 ssid = wpa_s->current_ssid;
 if (ssid && ssid->mode == WPAS_MODE_P2P_GROUP_FORMATION) {
  ssid->mode = WPAS_MODE_P2P_GO;
  p2p_group_notif_formation_done(wpa_s->p2p_group);
  wpa_supplicant_ap_mac_addr_filter(wpa_s, ((void*)0));
 }

 persistent = 0;
 if (ssid) {
  client = ssid->mode == WPAS_MODE_INFRA;
  if (ssid->mode == WPAS_MODE_P2P_GO) {
   persistent = ssid->p2p_persistent_group;
   os_memcpy(go_dev_addr, wpa_s->global->p2p_dev_addr,
      ETH_ALEN);
  } else
   persistent = wpas_p2p_persistent_group(wpa_s,
              go_dev_addr,
              ssid->ssid,
              ssid->ssid_len);
 } else {
  client = wpa_s->p2p_group_interface ==
   P2P_GROUP_INTERFACE_CLIENT;
  os_memset(go_dev_addr, 0, ETH_ALEN);
 }

 wpa_s->show_group_started = 0;
 if (client) {





  wpa_s->show_group_started = 1;
 } else {
  wpas_p2p_group_started(wpa_s, 1, ssid,
           ssid ? ssid->frequency : 0,
           ssid && ssid->passphrase == ((void*)0) &&
           ssid->psk_set ? ssid->psk : ((void*)0),
           ssid ? ssid->passphrase : ((void*)0),
           go_dev_addr, persistent, "");
  wpas_p2p_cross_connect_setup(wpa_s);
  wpas_p2p_set_group_idle_timeout(wpa_s);
 }

 if (persistent)
  wpas_p2p_store_persistent_group(wpa_s->p2pdev,
      ssid, go_dev_addr);
 else {
  os_free(wpa_s->global->add_psk);
  wpa_s->global->add_psk = ((void*)0);
 }

 if (!client) {
  wpas_notify_p2p_group_started(wpa_s, ssid, persistent, 0, ((void*)0));
  os_get_reltime(&wpa_s->global->p2p_go_wait_client);
 }
}
