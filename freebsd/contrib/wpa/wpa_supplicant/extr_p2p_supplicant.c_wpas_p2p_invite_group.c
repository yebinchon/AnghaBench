
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_global* global; TYPE_2__* p2pdev; scalar_t__ assoc_freq; TYPE_1__* current_bss; int * go_dev_addr; int * bssid; int * own_addr; struct wpa_ssid* current_ssid; int ifname; struct wpa_supplicant* next; scalar_t__ p2p_go_max_oper_chwidth; scalar_t__ p2p_go_vht_center_freq2; scalar_t__ p2p_go_vht; scalar_t__ p2p_go_ht40; scalar_t__ p2p_persistent_go_freq; } ;
struct wpa_ssid {scalar_t__ mode; int frequency; int ssid_len; int ssid; scalar_t__ p2p_persistent_group; } ;
struct wpa_global {int * p2p; scalar_t__ p2p_disabled; int * p2p_dev_addr; struct wpa_supplicant* p2p_invite_group; struct wpa_supplicant* ifaces; } ;
typedef enum p2p_invite_role { ____Placeholder_p2p_invite_role } p2p_invite_role ;
struct TYPE_4__ {int pending_invite_ssid_id; } ;
struct TYPE_3__ {int freq; } ;


 int MSG_DEBUG ;
 int P2P_INVITE_ROLE_ACTIVE_GO ;
 int P2P_INVITE_ROLE_CLIENT ;
 int P2P_MAX_PREF_CHANNELS ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ WPA_ASSOCIATED ;
 int is_zero_ether_addr (int *) ;
 scalar_t__ os_strcmp (int ,char const*) ;
 int p2p_invite (int *,int const*,int,int *,int ,int ,int,int const*,int,int,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpas_p2p_get_persistent (TYPE_2__*,int const*,int ,int ) ;
 int wpas_p2p_set_own_freq_preference (struct wpa_supplicant*,int) ;
 int wpas_p2p_setup_freqs (struct wpa_supplicant*,int,int*,int*,int,unsigned int*,unsigned int*) ;

int wpas_p2p_invite_group(struct wpa_supplicant *wpa_s, const char *ifname,
     const u8 *peer_addr, const u8 *go_dev_addr)
{
 struct wpa_global *global = wpa_s->global;
 enum p2p_invite_role role;
 u8 *bssid = ((void*)0);
 struct wpa_ssid *ssid;
 int persistent;
 int freq = 0, force_freq = 0, pref_freq = 0;
 int res;
 unsigned int pref_freq_list[P2P_MAX_PREF_CHANNELS], size;

 wpa_s->p2p_persistent_go_freq = 0;
 wpa_s->p2p_go_ht40 = 0;
 wpa_s->p2p_go_vht = 0;
 wpa_s->p2p_go_vht_center_freq2 = 0;
 wpa_s->p2p_go_max_oper_chwidth = 0;

 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (os_strcmp(wpa_s->ifname, ifname) == 0)
   break;
 }
 if (wpa_s == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "P2P: Interface '%s' not found", ifname);
  return -1;
 }

 ssid = wpa_s->current_ssid;
 if (ssid == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "P2P: No current SSID to use for "
      "invitation");
  return -1;
 }

 wpa_s->global->p2p_invite_group = wpa_s;
 persistent = ssid->p2p_persistent_group &&
  wpas_p2p_get_persistent(wpa_s->p2pdev, peer_addr,
     ssid->ssid, ssid->ssid_len);

 if (ssid->mode == WPAS_MODE_P2P_GO) {
  role = P2P_INVITE_ROLE_ACTIVE_GO;
  bssid = wpa_s->own_addr;
  if (go_dev_addr == ((void*)0))
   go_dev_addr = wpa_s->global->p2p_dev_addr;
  freq = ssid->frequency;
 } else {
  role = P2P_INVITE_ROLE_CLIENT;
  if (wpa_s->wpa_state < WPA_ASSOCIATED) {
   wpa_printf(MSG_DEBUG, "P2P: Not associated - cannot "
       "invite to current group");
   return -1;
  }
  bssid = wpa_s->bssid;
  if (go_dev_addr == ((void*)0) &&
      !is_zero_ether_addr(wpa_s->go_dev_addr))
   go_dev_addr = wpa_s->go_dev_addr;
  freq = wpa_s->current_bss ? wpa_s->current_bss->freq :
   (int) wpa_s->assoc_freq;
 }
 wpa_s->p2pdev->pending_invite_ssid_id = -1;

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;

 size = P2P_MAX_PREF_CHANNELS;
 res = wpas_p2p_setup_freqs(wpa_s, freq, &force_freq, &pref_freq,
       role == P2P_INVITE_ROLE_ACTIVE_GO,
       pref_freq_list, &size);
 if (res)
  return res;
 wpas_p2p_set_own_freq_preference(wpa_s, force_freq);

 return p2p_invite(wpa_s->global->p2p, peer_addr, role, bssid,
     ssid->ssid, ssid->ssid_len, force_freq,
     go_dev_addr, persistent, pref_freq, -1);
}
