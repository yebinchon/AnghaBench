
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int authkey; } ;
struct wpabuf {int dummy; } ;


 int ATTR_KEY_WRAP_AUTH ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 int WPS_KWA_LEN ;
 int hmac_sha256 (int ,int ,int ,int ,int *) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int *,int ) ;

int wps_build_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg)
{
 u8 hash[SHA256_MAC_LEN];

 wpa_printf(MSG_DEBUG, "WPS:  * Key Wrap Authenticator");
 hmac_sha256(wps->authkey, WPS_AUTHKEY_LEN, wpabuf_head(msg),
      wpabuf_len(msg), hash);

 wpabuf_put_be16(msg, ATTR_KEY_WRAP_AUTH);
 wpabuf_put_be16(msg, WPS_KWA_LEN);
 wpabuf_put_data(msg, hash, WPS_KWA_LEN);
 return 0;
}
