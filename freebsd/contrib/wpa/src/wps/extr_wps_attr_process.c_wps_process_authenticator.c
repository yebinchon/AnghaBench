
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int authkey; struct wpabuf const* last_msg; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHENTICATOR_LEN ;
 int WPS_AUTHKEY_LEN ;
 int hmac_sha256_vector (int ,int ,int,int const**,size_t*,int *) ;
 scalar_t__ os_memcmp_const (int *,int const*,int) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

int wps_process_authenticator(struct wps_data *wps, const u8 *authenticator,
         const struct wpabuf *msg)
{
 u8 hash[SHA256_MAC_LEN];
 const u8 *addr[2];
 size_t len[2];

 if (authenticator == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Authenticator attribute "
      "included");
  return -1;
 }

 if (wps->last_msg == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Last message not available for "
      "validating authenticator");
  return -1;
 }




 addr[0] = wpabuf_head(wps->last_msg);
 len[0] = wpabuf_len(wps->last_msg);
 addr[1] = wpabuf_head(msg);
 len[1] = wpabuf_len(msg) - 4 - WPS_AUTHENTICATOR_LEN;
 hmac_sha256_vector(wps->authkey, WPS_AUTHKEY_LEN, 2, addr, len, hash);

 if (os_memcmp_const(hash, authenticator, WPS_AUTHENTICATOR_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Incorrect Authenticator");
  return -1;
 }

 return 0;
}
