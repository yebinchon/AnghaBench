
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; } ;
struct wpa_cred {int dummy; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 size_t os_strlcpy (char*,char*,size_t) ;
 struct wpa_cred* wpa_config_get_cred (int ,int) ;
 char* wpa_config_get_cred_no_key (struct wpa_cred*,char*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_get_cred(struct wpa_supplicant *wpa_s,
           char *cmd, char *buf,
           size_t buflen)
{
 int id;
 size_t res;
 struct wpa_cred *cred;
 char *name, *value;


 name = os_strchr(cmd, ' ');
 if (name == ((void*)0))
  return -1;
 *name++ = '\0';

 id = atoi(cmd);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: GET_CRED id=%d name='%s'",
     id, name);

 cred = wpa_config_get_cred(wpa_s->conf, id);
 if (cred == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find cred id=%d",
      id);
  return -1;
 }

 value = wpa_config_get_cred_no_key(cred, name);
 if (value == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Failed to get cred variable '%s'",
      name);
  return -1;
 }

 res = os_strlcpy(buf, value, buflen);
 if (res >= buflen) {
  os_free(value);
  return -1;
 }

 os_free(value);

 return res;
}
