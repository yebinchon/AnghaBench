
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_global {struct wpabuf** wfd_subelem; } ;


 int MAX_WFD_SUBELEMS ;
 int atoi (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 struct wpabuf* wifi_display_get_wfd_ie (struct wpa_global*) ;
 int wpa_snprintf_hex (char*,size_t,scalar_t__,scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_head_u8 (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

int wifi_display_subelem_get(struct wpa_global *global, char *cmd,
        char *buf, size_t buflen)
{
 int subelem;

 if (os_strcmp(cmd, "all") == 0) {
  struct wpabuf *ie;
  int res;

  ie = wifi_display_get_wfd_ie(global);
  if (ie == ((void*)0))
   return 0;
  res = wpa_snprintf_hex(buf, buflen, wpabuf_head(ie),
           wpabuf_len(ie));
  wpabuf_free(ie);
  return res;
 }

 subelem = atoi(cmd);
 if (subelem < 0 || subelem >= MAX_WFD_SUBELEMS)
  return -1;

 if (global->wfd_subelem[subelem] == ((void*)0))
  return 0;

 return wpa_snprintf_hex(buf, buflen,
    wpabuf_head_u8(global->wfd_subelem[subelem]) +
    1,
    wpabuf_len(global->wfd_subelem[subelem]) - 1);
}
