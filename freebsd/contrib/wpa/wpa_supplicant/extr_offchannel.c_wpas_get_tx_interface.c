
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int ifname; struct wpa_supplicant* next; int const* own_addr; TYPE_1__* global; struct wpa_supplicant* parent; int pending_action_tx; scalar_t__ ap_iface; scalar_t__ p2p_mgmt; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ WLAN_ACTION_PUBLIC ;
 scalar_t__ os_memcmp (int const*,int const*,int ) ;
 int wpa_printf (int ,char*,int ,int ) ;
 scalar_t__* wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;

__attribute__((used)) static struct wpa_supplicant *
wpas_get_tx_interface(struct wpa_supplicant *wpa_s, const u8 *src)
{
 struct wpa_supplicant *iface;

 if (os_memcmp(src, wpa_s->own_addr, ETH_ALEN) == 0) {
  return wpa_s;
 }




 iface = wpa_s->global->ifaces;
 while (iface) {
  if (os_memcmp(src, iface->own_addr, ETH_ALEN) == 0)
   break;
  iface = iface->next;
 }
 if (iface) {
  wpa_printf(MSG_DEBUG, "P2P: Use group interface %s "
      "instead of interface %s for Action TX",
      iface->ifname, wpa_s->ifname);
  return iface;
 }

 return wpa_s;
}
