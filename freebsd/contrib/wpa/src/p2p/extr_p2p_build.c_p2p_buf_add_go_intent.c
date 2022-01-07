
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_GROUP_OWNER_INTENT ;
 int wpa_printf (int ,char*,int,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void p2p_buf_add_go_intent(struct wpabuf *buf, u8 go_intent)
{

 wpabuf_put_u8(buf, P2P_ATTR_GROUP_OWNER_INTENT);
 wpabuf_put_le16(buf, 1);
 wpabuf_put_u8(buf, go_intent);
 wpa_printf(MSG_DEBUG, "P2P: * GO Intent: Intent %u Tie breaker %u",
     go_intent >> 1, go_intent & 0x01);
}
