
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int ext_capab_len; int * ext_capab; } ;
struct wpa_eapol_ie_parse {int ext_capab_len; scalar_t__ ext_capab; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int os_memcpy (int *,scalar_t__,int) ;
 int * os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_peer_ext_capab(const struct wpa_eapol_ie_parse *kde,
          struct wpa_tdls_peer *peer)
{
 if (!kde->ext_capab) {
  wpa_printf(MSG_DEBUG, "TDLS: No extended capabilities "
      "received");
  return 0;
 }

 if (!peer->ext_capab || peer->ext_capab_len < kde->ext_capab_len - 2) {

  os_free(peer->ext_capab);
  peer->ext_capab = os_zalloc(kde->ext_capab_len - 2);
  if (peer->ext_capab == ((void*)0))
   return -1;
 }

 peer->ext_capab_len = kde->ext_capab_len - 2;
 os_memcpy(peer->ext_capab, kde->ext_capab + 2, peer->ext_capab_len);

 return 0;
}
