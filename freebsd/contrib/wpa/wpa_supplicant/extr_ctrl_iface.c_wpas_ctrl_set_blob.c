
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_config_blob {size_t len; int * data; int * name; } ;


 int MSG_DEBUG ;
 scalar_t__ hexstr2bin (char*,int *,size_t) ;
 int * os_malloc (size_t) ;
 char* os_strchr (char*,char) ;
 int * os_strdup (char*) ;
 size_t os_strlen (char*) ;
 struct wpa_config_blob* os_zalloc (int) ;
 int wpa_config_free_blob (struct wpa_config_blob*) ;
 int wpa_config_set_blob (int ,struct wpa_config_blob*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpas_ctrl_set_blob(struct wpa_supplicant *wpa_s, char *pos)
{
 char *name = pos;
 struct wpa_config_blob *blob;
 size_t len;

 pos = os_strchr(pos, ' ');
 if (pos == ((void*)0))
  return -1;
 *pos++ = '\0';
 len = os_strlen(pos);
 if (len & 1)
  return -1;

 wpa_printf(MSG_DEBUG, "CTRL: Set blob '%s'", name);
 blob = os_zalloc(sizeof(*blob));
 if (blob == ((void*)0))
  return -1;
 blob->name = os_strdup(name);
 blob->data = os_malloc(len / 2);
 if (blob->name == ((void*)0) || blob->data == ((void*)0)) {
  wpa_config_free_blob(blob);
  return -1;
 }

 if (hexstr2bin(pos, blob->data, len / 2) < 0) {
  wpa_printf(MSG_DEBUG, "CTRL: Invalid blob hex data");
  wpa_config_free_blob(blob);
  return -1;
 }
 blob->len = len / 2;

 wpa_config_set_blob(wpa_s->conf, blob);

 return 0;
}
