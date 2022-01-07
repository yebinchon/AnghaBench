
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_CONNECTION_CAPABILITY ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_connection_capability(struct wpabuf *buf, u8 connection_cap)
{

 wpabuf_put_u8(buf, P2P_ATTR_CONNECTION_CAPABILITY);
 wpabuf_put_le16(buf, 1);
 wpabuf_put_u8(buf, connection_cap);
 wpa_printf(MSG_DEBUG, "P2P: * Connection Capability: 0x%x",
     connection_cap);
}
