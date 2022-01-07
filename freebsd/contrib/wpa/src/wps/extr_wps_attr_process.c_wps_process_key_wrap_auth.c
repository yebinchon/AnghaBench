
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int authkey; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 int WPS_KWA_LEN ;
 int hmac_sha256 (int ,int ,int const*,size_t,int *) ;
 scalar_t__ os_memcmp_const (int *,int const*,int) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

int wps_process_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg,
         const u8 *key_wrap_auth)
{
 u8 hash[SHA256_MAC_LEN];
 const u8 *head;
 size_t len;

 if (key_wrap_auth == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No KWA in decrypted attribute");
  return -1;
 }

 head = wpabuf_head(msg);
 len = wpabuf_len(msg) - 4 - WPS_KWA_LEN;
 if (head + len != key_wrap_auth - 4) {
  wpa_printf(MSG_DEBUG, "WPS: KWA not in the end of the "
      "decrypted attribute");
  return -1;
 }

 hmac_sha256(wps->authkey, WPS_AUTHKEY_LEN, head, len, hash);
 if (os_memcmp_const(hash, key_wrap_auth, WPS_KWA_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid KWA");
  return -1;
 }

 return 0;
}
