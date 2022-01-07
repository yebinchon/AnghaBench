
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_CAPABILITY ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_capability(struct wpabuf *buf, u8 dev_capab, u8 group_capab)
{

 wpabuf_put_u8(buf, P2P_ATTR_CAPABILITY);
 wpabuf_put_le16(buf, 2);
 wpabuf_put_u8(buf, dev_capab);
 wpabuf_put_u8(buf, group_capab);
 wpa_printf(MSG_DEBUG, "P2P: * Capability dev=%02x group=%02x",
     dev_capab, group_capab);
}
