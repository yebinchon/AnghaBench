
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int drv_flags; int own_addr; int wpa; int * l2; int ifname; int p2p_mgmt; } ;


 int ETH_ALEN ;
 int ETH_P_EAPOL ;
 int L2_PACKET_FILTER_PKTTYPE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ;
 int WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE ;
 int l2_packet_deinit (int *) ;
 scalar_t__ l2_packet_get_own_addr (int *,int ) ;
 int * l2_packet_init (int ,int *,int ,int ,struct wpa_supplicant*,int ) ;
 scalar_t__ l2_packet_set_packet_filter (int *,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int * wpa_drv_get_mac_addr (struct wpa_supplicant*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_sm_set_own_addr (int ,int ) ;
 int wpa_supplicant_rx_eapol ;

int wpa_supplicant_update_mac_addr(struct wpa_supplicant *wpa_s)
{
 if ((!wpa_s->p2p_mgmt ||
      !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE)) &&
     !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE)) {
  l2_packet_deinit(wpa_s->l2);
  wpa_s->l2 = l2_packet_init(wpa_s->ifname,
        wpa_drv_get_mac_addr(wpa_s),
        ETH_P_EAPOL,
        wpa_supplicant_rx_eapol, wpa_s, 0);
  if (wpa_s->l2 == ((void*)0))
   return -1;

  if (l2_packet_set_packet_filter(wpa_s->l2,
      L2_PACKET_FILTER_PKTTYPE))
   wpa_dbg(wpa_s, MSG_DEBUG,
    "Failed to attach pkt_type filter");
 } else {
  const u8 *addr = wpa_drv_get_mac_addr(wpa_s);
  if (addr)
   os_memcpy(wpa_s->own_addr, addr, ETH_ALEN);
 }

 if (wpa_s->l2 && l2_packet_get_own_addr(wpa_s->l2, wpa_s->own_addr)) {
  wpa_msg(wpa_s, MSG_ERROR, "Failed to get own L2 address");
  return -1;
 }

 wpa_sm_set_own_addr(wpa_s->wpa, wpa_s->own_addr);

 return 0;
}
