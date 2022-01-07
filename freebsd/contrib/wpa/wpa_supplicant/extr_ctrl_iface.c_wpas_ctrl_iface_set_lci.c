
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct wpabuf* lci; int lci_time; } ;


 scalar_t__ os_get_reltime (int *) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wpabuf_parse_bin (char const*) ;

__attribute__((used)) static int wpas_ctrl_iface_set_lci(struct wpa_supplicant *wpa_s,
       const char *cmd)
{
 struct wpabuf *lci;

 if (*cmd == '\0' || os_strcmp(cmd, "\"\"") == 0) {
  wpabuf_free(wpa_s->lci);
  wpa_s->lci = ((void*)0);
  return 0;
 }

 lci = wpabuf_parse_bin(cmd);
 if (!lci)
  return -1;

 if (os_get_reltime(&wpa_s->lci_time)) {
  wpabuf_free(lci);
  return -1;
 }

 wpabuf_free(wpa_s->lci);
 wpa_s->lci = lci;

 return 0;
}
