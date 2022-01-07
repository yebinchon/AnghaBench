
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* mesh_rsn; int * own_addr; } ;
struct sta_info {int mtk_len; int mtk; TYPE_2__* sae; int my_lid; int peer_lid; int * my_nonce; int * peer_nonce; int * addr; } ;
typedef int context ;
struct TYPE_4__ {int pmk; } ;
struct TYPE_3__ {int pairwise_cipher; } ;


 int ETH_ALEN ;
 int RSN_AUTH_KEY_MGMT_SAE ;
 scalar_t__ RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 int SAE_PMK_LEN ;
 int WPA_NONCE_LEN ;
 int WPA_PUT_LE16 (int *,int ) ;
 scalar_t__ os_memcmp (int *,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int sha256_prf (int ,int ,char*,int *,int,int ,int ) ;
 int wpa_cipher_key_len (int ) ;

int mesh_rsn_derive_mtk(struct wpa_supplicant *wpa_s, struct sta_info *sta)
{
 u8 *ptr;
 u8 *min, *max;
 u8 *myaddr = wpa_s->own_addr;
 u8 *peer = sta->addr;
 u8 context[2 * WPA_NONCE_LEN + 2 * 2 + RSN_SELECTOR_LEN + 2 * ETH_ALEN];







 ptr = context;
 if (os_memcmp(sta->my_nonce, sta->peer_nonce, WPA_NONCE_LEN) < 0) {
  min = sta->my_nonce;
  max = sta->peer_nonce;
 } else {
  min = sta->peer_nonce;
  max = sta->my_nonce;
 }
 os_memcpy(ptr, min, WPA_NONCE_LEN);
 ptr += WPA_NONCE_LEN;
 os_memcpy(ptr, max, WPA_NONCE_LEN);
 ptr += WPA_NONCE_LEN;

 if (sta->my_lid < sta->peer_lid) {
  WPA_PUT_LE16(ptr, sta->my_lid);
  ptr += 2;
  WPA_PUT_LE16(ptr, sta->peer_lid);
  ptr += 2;
 } else {
  WPA_PUT_LE16(ptr, sta->peer_lid);
  ptr += 2;
  WPA_PUT_LE16(ptr, sta->my_lid);
  ptr += 2;
 }


 RSN_SELECTOR_PUT(ptr, RSN_AUTH_KEY_MGMT_SAE);
 ptr += RSN_SELECTOR_LEN;

 if (os_memcmp(myaddr, peer, ETH_ALEN) < 0) {
  min = myaddr;
  max = peer;
 } else {
  min = peer;
  max = myaddr;
 }
 os_memcpy(ptr, min, ETH_ALEN);
 ptr += ETH_ALEN;
 os_memcpy(ptr, max, ETH_ALEN);

 sta->mtk_len = wpa_cipher_key_len(wpa_s->mesh_rsn->pairwise_cipher);
 sha256_prf(sta->sae->pmk, SAE_PMK_LEN,
     "Temporal Key Derivation", context, sizeof(context),
     sta->mtk, sta->mtk_len);
 return 0;
}
