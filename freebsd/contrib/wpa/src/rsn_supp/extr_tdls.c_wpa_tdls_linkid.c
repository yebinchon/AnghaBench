
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int addr; scalar_t__ initiator; } ;
struct wpa_tdls_lnkid {int ie_len; int resp_sta; int init_sta; int bssid; int ie_type; } ;
struct wpa_sm {int own_addr; int bssid; } ;


 int ETH_ALEN ;
 int WLAN_EID_LINK_ID ;
 int os_memcpy (int ,int ,int) ;

__attribute__((used)) static void wpa_tdls_linkid(struct wpa_sm *sm, struct wpa_tdls_peer *peer,
       struct wpa_tdls_lnkid *lnkid)
{
 lnkid->ie_type = WLAN_EID_LINK_ID;
 lnkid->ie_len = 3 * ETH_ALEN;
 os_memcpy(lnkid->bssid, sm->bssid, ETH_ALEN);
 if (peer->initiator) {
  os_memcpy(lnkid->init_sta, sm->own_addr, ETH_ALEN);
  os_memcpy(lnkid->resp_sta, peer->addr, ETH_ALEN);
 } else {
  os_memcpy(lnkid->init_sta, peer->addr, ETH_ALEN);
  os_memcpy(lnkid->resp_sta, sm->own_addr, ETH_ALEN);
 }
}
