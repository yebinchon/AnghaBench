
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_CONFIGURATION_TIMEOUT ;
 int wpa_printf (int ,char*,int ,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_config_timeout(struct wpabuf *buf, u8 go_timeout,
    u8 client_timeout)
{

 wpabuf_put_u8(buf, P2P_ATTR_CONFIGURATION_TIMEOUT);
 wpabuf_put_le16(buf, 2);
 wpabuf_put_u8(buf, go_timeout);
 wpabuf_put_u8(buf, client_timeout);
 wpa_printf(MSG_DEBUG, "P2P: * Configuration Timeout: GO %d (*10ms)  "
     "client %d (*10ms)", go_timeout, client_timeout);
}
