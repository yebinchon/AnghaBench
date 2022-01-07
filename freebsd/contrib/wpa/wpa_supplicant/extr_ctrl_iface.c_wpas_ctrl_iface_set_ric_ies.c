
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct wpabuf* ric_ies; } ;


 scalar_t__ os_strcmp (char const*,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wpabuf_parse_bin (char const*) ;

__attribute__((used)) static int wpas_ctrl_iface_set_ric_ies(struct wpa_supplicant *wpa_s,
       const char *cmd)
{
 struct wpabuf *ric_ies;

 if (*cmd == '\0' || os_strcmp(cmd, "\"\"") == 0) {
  wpabuf_free(wpa_s->ric_ies);
  wpa_s->ric_ies = ((void*)0);
  return 0;
 }

 ric_ies = wpabuf_parse_bin(cmd);
 if (!ric_ies)
  return -1;

 wpabuf_free(wpa_s->ric_ies);
 wpa_s->ric_ies = ric_ies;

 return 0;
}
