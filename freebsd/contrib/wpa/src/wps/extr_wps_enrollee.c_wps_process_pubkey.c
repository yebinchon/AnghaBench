
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct wps_data {int * dh_pubkey_r; int config_error; int const* peer_pubkey_hash; scalar_t__ peer_pubkey_hash_set; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPS_CFG_PUBLIC_KEY_HASH_MISMATCH ;
 int WPS_HASH_LEN ;
 size_t WPS_OOB_PUBKEY_HASH_LEN ;
 scalar_t__ os_memcmp_const (int const*,int const*,size_t) ;
 int sha256_vector (int,int const**,size_t*,int const*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (int *) ;
 scalar_t__ wps_derive_keys (struct wps_data*) ;

__attribute__((used)) static int wps_process_pubkey(struct wps_data *wps, const u8 *pk,
         size_t pk_len)
{
 if (pk == ((void*)0) || pk_len == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No Public Key received");
  return -1;
 }

 if (wps->peer_pubkey_hash_set) {
  u8 hash[WPS_HASH_LEN];
  sha256_vector(1, &pk, &pk_len, hash);
  if (os_memcmp_const(hash, wps->peer_pubkey_hash,
        WPS_OOB_PUBKEY_HASH_LEN) != 0) {
   wpa_printf(MSG_ERROR, "WPS: Public Key hash mismatch");
   wpa_hexdump(MSG_DEBUG, "WPS: Received public key",
        pk, pk_len);
   wpa_hexdump(MSG_DEBUG, "WPS: Calculated public key "
        "hash", hash, WPS_OOB_PUBKEY_HASH_LEN);
   wpa_hexdump(MSG_DEBUG, "WPS: Expected public key hash",
        wps->peer_pubkey_hash,
        WPS_OOB_PUBKEY_HASH_LEN);
   wps->config_error = WPS_CFG_PUBLIC_KEY_HASH_MISMATCH;
   return -1;
  }
 }

 wpabuf_free(wps->dh_pubkey_r);
 wps->dh_pubkey_r = wpabuf_alloc_copy(pk, pk_len);
 if (wps->dh_pubkey_r == ((void*)0))
  return -1;

 if (wps_derive_keys(wps) < 0)
  return -1;

 return 0;
}
