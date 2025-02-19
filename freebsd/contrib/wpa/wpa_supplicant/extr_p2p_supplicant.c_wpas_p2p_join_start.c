
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int p2p_in_provisioning; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; int const* pending_join_iface_addr; int pending_join_wps_method; int const* pending_join_dev_addr; int p2p_fallback_to_go_neg; TYPE_1__* global; struct wpa_supplicant* parent; int p2p_wps_method; int const* p2p_pin; } ;
struct wpa_bss {int freq; size_t ssid_len; int const* ssid; } ;
struct p2p_go_neg_results {int freq; size_t ssid_len; int const* ssid; int wps_method; int const* peer_interface_addr; int const* peer_device_addr; } ;
typedef int res ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;


 size_t ETH_ALEN ;
 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int os_memcpy (int const*,int const*,size_t) ;
 int os_memset (struct p2p_go_neg_results*,int ,int) ;
 struct wpa_bss* wpa_bss_get (struct wpa_supplicant*,int const*,int const*,size_t) ;
 struct wpa_bss* wpa_bss_get_bssid_latest (struct wpa_supplicant*,int const*) ;
 int wpa_drv_cancel_remain_on_channel (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_ssid_txt (int const*,size_t) ;
 struct wpa_supplicant* wpas_p2p_get_group_iface (struct wpa_supplicant*,int ,int ) ;
 int wpas_p2p_group_formation_timeout ;
 int wpas_start_wps_enrollee (struct wpa_supplicant*,struct p2p_go_neg_results*) ;

__attribute__((used)) static int wpas_p2p_join_start(struct wpa_supplicant *wpa_s, int freq,
          const u8 *ssid, size_t ssid_len)
{
 struct wpa_supplicant *group;
 struct p2p_go_neg_results res;
 struct wpa_bss *bss;

 group = wpas_p2p_get_group_iface(wpa_s, 0, 0);
 if (group == ((void*)0))
  return -1;
 if (group != wpa_s) {
  os_memcpy(group->p2p_pin, wpa_s->p2p_pin,
     sizeof(group->p2p_pin));
  group->p2p_wps_method = wpa_s->p2p_wps_method;
 }
 if (group == wpa_s->parent)
  wpa_s->global->p2p_group_formation = group;

 group->p2p_in_provisioning = 1;
 group->p2p_fallback_to_go_neg = wpa_s->p2p_fallback_to_go_neg;

 os_memset(&res, 0, sizeof(res));
 os_memcpy(res.peer_device_addr, wpa_s->pending_join_dev_addr, ETH_ALEN);
 os_memcpy(res.peer_interface_addr, wpa_s->pending_join_iface_addr,
    ETH_ALEN);
 res.wps_method = wpa_s->pending_join_wps_method;
 if (freq && ssid && ssid_len) {
  res.freq = freq;
  res.ssid_len = ssid_len;
  os_memcpy(res.ssid, ssid, ssid_len);
 } else {
  if (ssid && ssid_len) {
   bss = wpa_bss_get(wpa_s, wpa_s->pending_join_iface_addr,
       ssid, ssid_len);
  } else {
   bss = wpa_bss_get_bssid_latest(
    wpa_s, wpa_s->pending_join_iface_addr);
  }
  if (bss) {
   res.freq = bss->freq;
   res.ssid_len = bss->ssid_len;
   os_memcpy(res.ssid, bss->ssid, bss->ssid_len);
   wpa_printf(MSG_DEBUG, "P2P: Join target GO operating frequency from BSS table: %d MHz (SSID %s)",
       bss->freq,
       wpa_ssid_txt(bss->ssid, bss->ssid_len));
  } else if (ssid && ssid_len) {
   res.ssid_len = ssid_len;
   os_memcpy(res.ssid, ssid, ssid_len);
   wpa_printf(MSG_DEBUG, "P2P: Join target GO (SSID %s)",
       wpa_ssid_txt(ssid, ssid_len));
  }
 }

 if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
  wpa_printf(MSG_DEBUG, "P2P: Cancel remain-on-channel prior to "
      "starting client");
  wpa_drv_cancel_remain_on_channel(wpa_s);
  wpa_s->off_channel_freq = 0;
  wpa_s->roc_waiting_drv_freq = 0;
 }
 wpas_start_wps_enrollee(group, &res);






 eloop_cancel_timeout(wpas_p2p_group_formation_timeout, wpa_s, ((void*)0));
 eloop_register_timeout(60, 0, wpas_p2p_group_formation_timeout,
          wpa_s, ((void*)0));

 return 0;
}
