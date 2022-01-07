
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
struct parse_data {char* (* writer ) (struct parse_data const*,struct wpa_ssid*) ;scalar_t__ key_data; int name; } ;


 int MSG_DEBUG ;
 size_t NUM_SSID_FIELDS ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 char* os_strdup (char*) ;
 struct parse_data* ssid_fields ;
 int str_clear_free (char*) ;
 char* stub1 (struct parse_data const*,struct wpa_ssid*) ;
 int wpa_printf (int ,char*) ;

char * wpa_config_get_no_key(struct wpa_ssid *ssid, const char *var)
{
 size_t i;

 if (ssid == ((void*)0) || var == ((void*)0))
  return ((void*)0);

 for (i = 0; i < NUM_SSID_FIELDS; i++) {
  const struct parse_data *field = &ssid_fields[i];
  if (os_strcmp(var, field->name) == 0) {
   char *res = field->writer(field, ssid);
   if (field->key_data) {
    if (res && res[0]) {
     wpa_printf(MSG_DEBUG, "Do not allow "
         "key_data field to be "
         "exposed");
     str_clear_free(res);
     return os_strdup("*");
    }

    os_free(res);
    return ((void*)0);
   }
   return res;
  }
 }

 return ((void*)0);
}
