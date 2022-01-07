
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wps_parse_attr {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_NETWORK_KEY ;
 int MSG_DEBUG ;
 int MSG_EXCESSIVE ;
 int MSG_MSGDUMP ;
 int WPA_GET_BE16 (scalar_t__ const*) ;
 int os_memset (struct wps_parse_attr*,int ,int) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 scalar_t__ wps_set_attr (struct wps_parse_attr*,int,scalar_t__ const*,int) ;

int wps_parse_msg(const struct wpabuf *msg, struct wps_parse_attr *attr)
{
 const u8 *pos, *end;
 u16 type, len;




 os_memset(attr, 0, sizeof(*attr));
 pos = wpabuf_head(msg);
 end = pos + wpabuf_len(msg);

 while (pos < end) {
  if (end - pos < 4) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid message - "
       "%lu bytes remaining",
       (unsigned long) (end - pos));
   return -1;
  }

  type = WPA_GET_BE16(pos);
  pos += 2;
  len = WPA_GET_BE16(pos);
  pos += 2;
  wpa_printf(MSG_EXCESSIVE, "WPS: attr type=0x%x len=%u",
      type, len);
  if (len > end - pos) {
   wpa_printf(MSG_DEBUG, "WPS: Attribute overflow");
   wpa_hexdump_buf(MSG_MSGDUMP, "WPS: Message data", msg);
   return -1;
  }
  if (wps_set_attr(attr, type, pos, len) < 0)
   return -1;




  pos += len;
 }

 return 0;
}
