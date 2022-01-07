
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_FEATURE_CAPABILITY ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_feature_capability(struct wpabuf *buf, u16 len, const u8 *mask)
{
 if (!buf || !len || !mask)
  return;


 wpabuf_put_u8(buf, P2P_ATTR_FEATURE_CAPABILITY);
 wpabuf_put_le16(buf, len);
 wpabuf_put_data(buf, mask, len);
 wpa_printf(MSG_DEBUG, "P2P: * Feature Capability (%d)", len);
}
