
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_LISTEN_CHANNEL ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wpabuf_put_data (struct wpabuf*,char const*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_listen_channel(struct wpabuf *buf, const char *country,
    u8 reg_class, u8 channel)
{

 wpabuf_put_u8(buf, P2P_ATTR_LISTEN_CHANNEL);
 wpabuf_put_le16(buf, 5);
 wpabuf_put_data(buf, country, 3);
 wpabuf_put_u8(buf, reg_class);
 wpabuf_put_u8(buf, channel);
 wpa_printf(MSG_DEBUG, "P2P: * Listen Channel: Regulatory Class %u "
     "Channel %u", reg_class, channel);
}
