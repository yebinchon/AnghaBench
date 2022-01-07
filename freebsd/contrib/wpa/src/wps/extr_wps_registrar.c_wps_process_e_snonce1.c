
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int mac_addr_e; int wps; int config_error; int peer_hash1; int authkey; int dh_pubkey_r; int dh_pubkey_e; int * psk1; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 int WPS_CFG_DEV_PASSWORD_AUTH_FAILURE ;
 int WPS_HASH_LEN ;
 size_t WPS_PSK_LEN ;
 size_t WPS_SECRET_NONCE_LEN ;
 int hmac_sha256_vector (int ,int ,int,int const**,size_t*,int *) ;
 scalar_t__ os_memcmp_const (int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (int ) ;
 size_t wpabuf_len (int ) ;
 int wps_pwd_auth_fail_event (int ,int ,int,int ) ;

__attribute__((used)) static int wps_process_e_snonce1(struct wps_data *wps, const u8 *e_snonce1)
{
 u8 hash[SHA256_MAC_LEN];
 const u8 *addr[4];
 size_t len[4];

 if (e_snonce1 == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No E-SNonce1 received");
  return -1;
 }

 wpa_hexdump_key(MSG_DEBUG, "WPS: E-SNonce1", e_snonce1,
   WPS_SECRET_NONCE_LEN);


 addr[0] = e_snonce1;
 len[0] = WPS_SECRET_NONCE_LEN;
 addr[1] = wps->psk1;
 len[1] = WPS_PSK_LEN;
 addr[2] = wpabuf_head(wps->dh_pubkey_e);
 len[2] = wpabuf_len(wps->dh_pubkey_e);
 addr[3] = wpabuf_head(wps->dh_pubkey_r);
 len[3] = wpabuf_len(wps->dh_pubkey_r);
 hmac_sha256_vector(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);

 if (os_memcmp_const(wps->peer_hash1, hash, WPS_HASH_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: E-Hash1 derived from E-S1 does "
      "not match with the pre-committed value");
  wps->config_error = WPS_CFG_DEV_PASSWORD_AUTH_FAILURE;
  wps_pwd_auth_fail_event(wps->wps, 0, 1, wps->mac_addr_e);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "WPS: Enrollee proved knowledge of the first "
     "half of the device password");

 return 0;
}
