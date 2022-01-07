
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {scalar_t__ supp_channels_len; int * supp_channels; } ;
struct wpa_eapol_ie_parse {scalar_t__ supp_channels_len; int supp_channels; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 int * os_zalloc (scalar_t__) ;
 int wpa_hexdump (int ,char*,int *,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_peer_supp_channels(const struct wpa_eapol_ie_parse *kde,
       struct wpa_tdls_peer *peer)
{
 if (!kde->supp_channels) {
  wpa_printf(MSG_DEBUG, "TDLS: No supported channels received");
  return 0;
 }

 if (!peer->supp_channels ||
     peer->supp_channels_len < kde->supp_channels_len) {
  os_free(peer->supp_channels);
  peer->supp_channels = os_zalloc(kde->supp_channels_len);
  if (peer->supp_channels == ((void*)0))
   return -1;
 }

 peer->supp_channels_len = kde->supp_channels_len;

 os_memcpy(peer->supp_channels, kde->supp_channels,
    peer->supp_channels_len);
 wpa_hexdump(MSG_DEBUG, "TDLS: Peer Supported Channels",
      (u8 *) peer->supp_channels, peer->supp_channels_len);
 return 0;
}
