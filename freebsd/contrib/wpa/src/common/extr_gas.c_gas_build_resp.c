
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int WLAN_ACTION_PUBLIC ;
 int WLAN_PA_GAS_COMEBACK_RESP ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf *
gas_build_resp(u8 action, u8 dialog_token, u16 status_code, u8 frag_id,
        u8 more, u16 comeback_delay, size_t size)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(100 + size);
 if (buf == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(buf, WLAN_ACTION_PUBLIC);
 wpabuf_put_u8(buf, action);
 wpabuf_put_u8(buf, dialog_token);
 wpabuf_put_le16(buf, status_code);
 if (action == WLAN_PA_GAS_COMEBACK_RESP)
  wpabuf_put_u8(buf, frag_id | (more ? 0x80 : 0));
 wpabuf_put_le16(buf, comeback_delay);

 return buf;
}
