
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_noa_desc {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_NOTICE_OF_ABSENCE ;
 int p2p_buf_add_noa_desc (struct wpabuf*,struct p2p_noa_desc*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void p2p_buf_add_noa(struct wpabuf *buf, u8 noa_index, u8 opp_ps, u8 ctwindow,
       struct p2p_noa_desc *desc1, struct p2p_noa_desc *desc2)
{

 wpabuf_put_u8(buf, P2P_ATTR_NOTICE_OF_ABSENCE);
 wpabuf_put_le16(buf, 2 + (desc1 ? 13 : 0) + (desc2 ? 13 : 0));
 wpabuf_put_u8(buf, noa_index);
 wpabuf_put_u8(buf, (opp_ps ? 0x80 : 0) | (ctwindow & 0x7f));
 p2p_buf_add_noa_desc(buf, desc1);
 p2p_buf_add_noa_desc(buf, desc2);
 wpa_printf(MSG_DEBUG, "P2P: * Notice of Absence");
}
