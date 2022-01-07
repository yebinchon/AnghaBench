
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_2__ {int const* tk; int const* kck; } ;
struct wpa_tdls_peer {int tpk_set; TYPE_1__ tpk; int const* addr; int const* inonce; int const* rnonce; } ;
typedef int data ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPA_NONCE_LEN ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;
 int os_memcpy (int const*,int const*,int) ;
 int sha256_prf (int const*,int,char*,int const*,int,int const*,int) ;
 int sha256_vector (int,int const**,size_t*,int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;

__attribute__((used)) static void wpa_tdls_generate_tpk(struct wpa_tdls_peer *peer,
      const u8 *own_addr, const u8 *bssid)
{
 u8 key_input[SHA256_MAC_LEN];
 const u8 *nonce[2];
 size_t len[2];
 u8 data[3 * ETH_ALEN];





 len[0] = WPA_NONCE_LEN;
 len[1] = WPA_NONCE_LEN;
 if (os_memcmp(peer->inonce, peer->rnonce, WPA_NONCE_LEN) < 0) {
  nonce[0] = peer->inonce;
  nonce[1] = peer->rnonce;
 } else {
  nonce[0] = peer->rnonce;
  nonce[1] = peer->inonce;
 }
 wpa_hexdump(MSG_DEBUG, "TDLS: min(Nonce)", nonce[0], WPA_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "TDLS: max(Nonce)", nonce[1], WPA_NONCE_LEN);
 sha256_vector(2, nonce, len, key_input);
 wpa_hexdump_key(MSG_DEBUG, "TDLS: TPK-Key-Input",
   key_input, SHA256_MAC_LEN);






 if (os_memcmp(own_addr, peer->addr, ETH_ALEN) < 0) {
  os_memcpy(data, own_addr, ETH_ALEN);
  os_memcpy(data + ETH_ALEN, peer->addr, ETH_ALEN);
 } else {
  os_memcpy(data, peer->addr, ETH_ALEN);
  os_memcpy(data + ETH_ALEN, own_addr, ETH_ALEN);
 }
 os_memcpy(data + 2 * ETH_ALEN, bssid, ETH_ALEN);
 wpa_hexdump(MSG_DEBUG, "TDLS: KDF Context", data, sizeof(data));

 sha256_prf(key_input, SHA256_MAC_LEN, "TDLS PMK", data, sizeof(data),
     (u8 *) &peer->tpk, sizeof(peer->tpk));
 wpa_hexdump_key(MSG_DEBUG, "TDLS: TPK-KCK",
   peer->tpk.kck, sizeof(peer->tpk.kck));
 wpa_hexdump_key(MSG_DEBUG, "TDLS: TPK-TK",
   peer->tpk.tk, sizeof(peer->tpk.tk));
 peer->tpk_set = 1;
}
