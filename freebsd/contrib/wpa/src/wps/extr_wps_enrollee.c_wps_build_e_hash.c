
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int authkey; int * psk2; int * snonce; int * dh_pubkey_r; int * dh_pubkey_e; int * psk1; } ;
struct wpabuf {int dummy; } ;


 int ATTR_E_HASH1 ;
 int ATTR_E_HASH2 ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 size_t WPS_PSK_LEN ;
 int WPS_SECRET_NONCE_LEN ;
 int hmac_sha256_vector (int ,int ,int,int const**,size_t*,int *) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (int *) ;
 size_t wpabuf_len (int *) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_e_hash(struct wps_data *wps, struct wpabuf *msg)
{
 u8 *hash;
 const u8 *addr[4];
 size_t len[4];

 if (random_get_bytes(wps->snonce, 2 * WPS_SECRET_NONCE_LEN) < 0)
  return -1;
 wpa_hexdump(MSG_DEBUG, "WPS: E-S1", wps->snonce, WPS_SECRET_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: E-S2",
      wps->snonce + WPS_SECRET_NONCE_LEN, WPS_SECRET_NONCE_LEN);

 if (wps->dh_pubkey_e == ((void*)0) || wps->dh_pubkey_r == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: DH public keys not available for "
      "E-Hash derivation");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "WPS:  * E-Hash1");
 wpabuf_put_be16(msg, ATTR_E_HASH1);
 wpabuf_put_be16(msg, SHA256_MAC_LEN);
 hash = wpabuf_put(msg, SHA256_MAC_LEN);

 addr[0] = wps->snonce;
 len[0] = WPS_SECRET_NONCE_LEN;
 addr[1] = wps->psk1;
 len[1] = WPS_PSK_LEN;
 addr[2] = wpabuf_head(wps->dh_pubkey_e);
 len[2] = wpabuf_len(wps->dh_pubkey_e);
 addr[3] = wpabuf_head(wps->dh_pubkey_r);
 len[3] = wpabuf_len(wps->dh_pubkey_r);
 hmac_sha256_vector(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);
 wpa_hexdump(MSG_DEBUG, "WPS: E-Hash1", hash, SHA256_MAC_LEN);

 wpa_printf(MSG_DEBUG, "WPS:  * E-Hash2");
 wpabuf_put_be16(msg, ATTR_E_HASH2);
 wpabuf_put_be16(msg, SHA256_MAC_LEN);
 hash = wpabuf_put(msg, SHA256_MAC_LEN);

 addr[0] = wps->snonce + WPS_SECRET_NONCE_LEN;
 addr[1] = wps->psk2;
 hmac_sha256_vector(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);
 wpa_hexdump(MSG_DEBUG, "WPS: E-Hash2", hash, SHA256_MAC_LEN);

 return 0;
}
