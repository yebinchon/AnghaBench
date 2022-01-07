
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {int * ht_capabilities; } ;
struct wpa_eapol_ie_parse {int ht_capabilities; } ;
struct ieee80211_ht_capabilities {int dummy; } ;


 int MSG_DEBUG ;
 int os_memcpy (int *,int ,int) ;
 int * os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_peer_ht_capab(const struct wpa_eapol_ie_parse *kde,
         struct wpa_tdls_peer *peer)
{
 if (!kde->ht_capabilities) {
  wpa_printf(MSG_DEBUG, "TDLS: No supported ht capabilities "
      "received");
  return 0;
 }

 if (!peer->ht_capabilities) {
  peer->ht_capabilities =
                        os_zalloc(sizeof(struct ieee80211_ht_capabilities));
  if (peer->ht_capabilities == ((void*)0))
                        return -1;
 }

 os_memcpy(peer->ht_capabilities, kde->ht_capabilities,
                  sizeof(struct ieee80211_ht_capabilities));
 wpa_hexdump(MSG_DEBUG, "TDLS: Peer HT capabilities",
      (u8 *) peer->ht_capabilities,
      sizeof(struct ieee80211_ht_capabilities));

 return 0;
}
