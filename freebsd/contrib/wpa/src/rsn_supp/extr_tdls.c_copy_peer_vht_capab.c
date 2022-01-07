
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {int * vht_capabilities; } ;
struct wpa_eapol_ie_parse {int vht_capabilities; } ;
struct ieee80211_vht_capabilities {int dummy; } ;


 int MSG_DEBUG ;
 int os_memcpy (int *,int ,int) ;
 int * os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_peer_vht_capab(const struct wpa_eapol_ie_parse *kde,
         struct wpa_tdls_peer *peer)
{
 if (!kde->vht_capabilities) {
  wpa_printf(MSG_DEBUG, "TDLS: No supported vht capabilities "
      "received");
  return 0;
 }

 if (!peer->vht_capabilities) {
  peer->vht_capabilities =
                        os_zalloc(sizeof(struct ieee80211_vht_capabilities));
  if (peer->vht_capabilities == ((void*)0))
                        return -1;
 }

 os_memcpy(peer->vht_capabilities, kde->vht_capabilities,
                  sizeof(struct ieee80211_vht_capabilities));
 wpa_hexdump(MSG_DEBUG, "TDLS: Peer VHT capabilities",
      (u8 *) peer->vht_capabilities,
      sizeof(struct ieee80211_vht_capabilities));

 return 0;
}
