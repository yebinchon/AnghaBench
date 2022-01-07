
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_IE_VENDOR_TYPE ;
 int WLAN_ACTION_PUBLIC ;
 int WLAN_PA_VENDOR_SPECIFIC ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_public_action_hdr(struct wpabuf *buf, u8 subtype,
       u8 dialog_token)
{
 wpabuf_put_u8(buf, WLAN_ACTION_PUBLIC);
 wpabuf_put_u8(buf, WLAN_PA_VENDOR_SPECIFIC);
 wpabuf_put_be32(buf, P2P_IE_VENDOR_TYPE);

 wpabuf_put_u8(buf, subtype);
 wpabuf_put_u8(buf, dialog_token);
 wpa_printf(MSG_DEBUG, "P2P: * Dialog Token: %d", dialog_token);
}
