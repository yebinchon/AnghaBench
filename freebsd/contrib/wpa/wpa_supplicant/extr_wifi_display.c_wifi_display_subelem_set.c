
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_global {struct wpabuf** wfd_subelem; } ;


 int MAX_WFD_SUBELEMS ;
 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ hexstr2bin (char*,int ,size_t) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 size_t os_strlen (char*) ;
 int wifi_display_subelem_set_from_ies (struct wpa_global*,struct wpabuf*) ;
 int wifi_display_update_wfd_ie (struct wpa_global*) ;
 int wpa_printf (int ,char*,int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

int wifi_display_subelem_set(struct wpa_global *global, char *cmd)
{
 char *pos;
 int subelem;
 size_t len;
 struct wpabuf *e;

 pos = os_strchr(cmd, ' ');
 if (pos == ((void*)0))
  return -1;
 *pos++ = '\0';

 len = os_strlen(pos);
 if (len & 1)
  return -1;
 len /= 2;

 if (os_strcmp(cmd, "all") == 0) {
  int res;

  e = wpabuf_alloc(len);
  if (e == ((void*)0))
   return -1;
  if (hexstr2bin(pos, wpabuf_put(e, len), len) < 0) {
   wpabuf_free(e);
   return -1;
  }
  res = wifi_display_subelem_set_from_ies(global, e);
  wpabuf_free(e);
  return res;
 }

 subelem = atoi(cmd);
 if (subelem < 0 || subelem >= MAX_WFD_SUBELEMS)
  return -1;

 if (len == 0) {

  e = ((void*)0);
  wpa_printf(MSG_DEBUG, "WFD: Clear subelement %d", subelem);
 } else {
  e = wpabuf_alloc(1 + len);
  if (e == ((void*)0))
   return -1;
  wpabuf_put_u8(e, subelem);
  if (hexstr2bin(pos, wpabuf_put(e, len), len) < 0) {
   wpabuf_free(e);
   return -1;
  }
  wpa_printf(MSG_DEBUG, "WFD: Set subelement %d", subelem);
 }

 wpabuf_free(global->wfd_subelem[subelem]);
 global->wfd_subelem[subelem] = e;
 wifi_display_update_wfd_ie(global);

 return 0;
}
