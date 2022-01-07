
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_IE_VENDOR_TYPE ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

u8 * p2p_buf_add_ie_hdr(struct wpabuf *buf)
{
 u8 *len;


 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 len = wpabuf_put(buf, 1);
 wpabuf_put_be32(buf, P2P_IE_VENDOR_TYPE);
 wpa_printf(MSG_DEBUG, "P2P: * P2P IE header");
 return len;
}
