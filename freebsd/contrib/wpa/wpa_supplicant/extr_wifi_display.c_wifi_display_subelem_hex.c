
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
typedef size_t u16 ;
struct wpabuf {int dummy; } ;


 size_t WIFI_DISPLAY_SUBELEM_HEADER_LEN ;
 size_t WPA_GET_BE16 (scalar_t__ const*) ;
 char* os_zalloc (int) ;
 int wpa_snprintf_hex (char*,int,scalar_t__ const*,size_t) ;
 scalar_t__* wpabuf_head_u8 (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;

char * wifi_display_subelem_hex(const struct wpabuf *wfd_subelems, u8 id)
{
 char *subelem = ((void*)0);
 const u8 *buf;
 size_t buflen;
 size_t i = 0;
 u16 elen;

 if (!wfd_subelems)
  return ((void*)0);

 buf = wpabuf_head_u8(wfd_subelems);
 if (!buf)
  return ((void*)0);

 buflen = wpabuf_len(wfd_subelems);

 while (i + WIFI_DISPLAY_SUBELEM_HEADER_LEN < buflen) {
  elen = WPA_GET_BE16(buf + i + 1);
  if (i + WIFI_DISPLAY_SUBELEM_HEADER_LEN + elen > buflen)
   break;

  if (buf[i] == id) {
   if (elen > 1000)
    break;
   subelem = os_zalloc(2 * elen + 1);
   if (!subelem)
    return ((void*)0);
   wpa_snprintf_hex(subelem, 2 * elen + 1,
      buf + i +
      WIFI_DISPLAY_SUBELEM_HEADER_LEN,
      elen);
   break;
  }

  i += elen + WIFI_DISPLAY_SUBELEM_HEADER_LEN;
 }

 return subelem;
}
