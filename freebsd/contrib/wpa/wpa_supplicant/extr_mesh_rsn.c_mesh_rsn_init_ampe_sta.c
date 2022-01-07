
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int mesh_rsn; } ;
struct sta_info {int peer_nonce; int my_nonce; } ;


 int MSG_INFO ;
 int WPA_NONCE_LEN ;
 int mesh_rsn_derive_aek (int ,struct sta_info*) ;
 int os_memset (int ,int ,int ) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_printf (int ,char*) ;

void mesh_rsn_init_ampe_sta(struct wpa_supplicant *wpa_s, struct sta_info *sta)
{
 if (random_get_bytes(sta->my_nonce, WPA_NONCE_LEN) < 0) {
  wpa_printf(MSG_INFO, "mesh: Failed to derive random nonce");

 }
 os_memset(sta->peer_nonce, 0, WPA_NONCE_LEN);
 mesh_rsn_derive_aek(wpa_s->mesh_rsn, sta);
}
