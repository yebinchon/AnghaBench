
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_EXT_LISTEN_TIMING ;
 int wpa_printf (int ,char*,int,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_ext_listen_timing(struct wpabuf *buf, u16 period,
       u16 interval)
{

 wpabuf_put_u8(buf, P2P_ATTR_EXT_LISTEN_TIMING);
 wpabuf_put_le16(buf, 4);
 wpabuf_put_le16(buf, period);
 wpabuf_put_le16(buf, interval);
 wpa_printf(MSG_DEBUG, "P2P: * Extended Listen Timing (period %u msec  "
     "interval %u msec)", period, interval);
}
