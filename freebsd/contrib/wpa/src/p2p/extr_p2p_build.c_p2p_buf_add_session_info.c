
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int P2P_ATTR_SESSION_INFORMATION_DATA ;
 size_t os_strlen (char const*) ;
 int wpa_printf (int ,char*,char const*) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_session_info(struct wpabuf *buf, const char *info)
{
 size_t info_len = 0;

 if (info && info[0])
  info_len = os_strlen(info);


 wpabuf_put_u8(buf, P2P_ATTR_SESSION_INFORMATION_DATA);
 wpabuf_put_le16(buf, (u16) info_len);

 if (info) {
  wpabuf_put_data(buf, info, info_len);
  wpa_printf(MSG_DEBUG, "P2P: * Session Info Data (%s)", info);
 }
}
