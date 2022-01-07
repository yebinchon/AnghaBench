
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
typedef enum p2p_role_indication { ____Placeholder_p2p_role_indication } p2p_role_indication ;


 int MSG_DEBUG ;
 int P2P_ATTR_OOB_GO_NEG_CHANNEL ;
 int wpa_printf (int ,char*,int ,int ,int) ;
 int wpabuf_put_data (struct wpabuf*,char const*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_oob_go_neg_channel(struct wpabuf *buf, const char *country,
        u8 oper_class, u8 channel,
        enum p2p_role_indication role)
{

 wpabuf_put_u8(buf, P2P_ATTR_OOB_GO_NEG_CHANNEL);
 wpabuf_put_le16(buf, 6);
 wpabuf_put_data(buf, country, 3);
 wpabuf_put_u8(buf, oper_class);
 wpabuf_put_u8(buf, channel);
 wpabuf_put_u8(buf, (u8) role);
 wpa_printf(MSG_DEBUG, "P2P: * OOB GO Negotiation Channel: Operating "
     "Class %u Channel %u Role %d",
     oper_class, channel, role);
}
