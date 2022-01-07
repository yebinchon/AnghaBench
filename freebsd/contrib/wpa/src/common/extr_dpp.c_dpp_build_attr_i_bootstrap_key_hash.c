
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int DPP_ATTR_I_BOOTSTRAP_KEY_HASH ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static void dpp_build_attr_i_bootstrap_key_hash(struct wpabuf *msg,
      const u8 *hash)
{
 if (hash) {
  wpa_printf(MSG_DEBUG, "DPP: I-Bootstrap Key Hash");
  wpabuf_put_le16(msg, DPP_ATTR_I_BOOTSTRAP_KEY_HASH);
  wpabuf_put_le16(msg, SHA256_MAC_LEN);
  wpabuf_put_data(msg, hash, SHA256_MAC_LEN);
 }
}
