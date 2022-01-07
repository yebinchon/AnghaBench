
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct wpa_scan_res {int ie_len; } ;


 int const WLAN_EID_VENDOR_SPECIFIC ;
 scalar_t__ WPA_GET_BE32 (int const*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int const) ;

struct wpabuf * wpa_scan_get_vendor_ie_multi(const struct wpa_scan_res *res,
          u32 vendor_type)
{
 struct wpabuf *buf;
 const u8 *end, *pos;

 buf = wpabuf_alloc(res->ie_len);
 if (buf == ((void*)0))
  return ((void*)0);

 pos = (const u8 *) (res + 1);
 end = pos + res->ie_len;

 while (end - pos > 1) {
  if (2 + pos[1] > end - pos)
   break;
  if (pos[0] == WLAN_EID_VENDOR_SPECIFIC && pos[1] >= 4 &&
      vendor_type == WPA_GET_BE32(&pos[2]))
   wpabuf_put_data(buf, pos + 2 + 4, pos[1] - 4);
  pos += 2 + pos[1];
 }

 if (wpabuf_len(buf) == 0) {
  wpabuf_free(buf);
  buf = ((void*)0);
 }

 return buf;
}
