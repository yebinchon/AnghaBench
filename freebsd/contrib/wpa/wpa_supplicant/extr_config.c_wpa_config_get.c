
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
struct parse_data {char* (* writer ) (struct parse_data const*,struct wpa_ssid*) ;int name; } ;


 int MSG_ERROR ;
 size_t NUM_SSID_FIELDS ;
 scalar_t__ has_newline (char*) ;
 int os_free (char*) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 struct parse_data* ssid_fields ;
 char* stub1 (struct parse_data const*,struct wpa_ssid*) ;
 int wpa_printf (int ,char*,char const*) ;

char * wpa_config_get(struct wpa_ssid *ssid, const char *var)
{
 size_t i;

 if (ssid == ((void*)0) || var == ((void*)0))
  return ((void*)0);

 for (i = 0; i < NUM_SSID_FIELDS; i++) {
  const struct parse_data *field = &ssid_fields[i];
  if (os_strcmp(var, field->name) == 0) {
   char *ret = field->writer(field, ssid);

   if (ret && has_newline(ret)) {
    wpa_printf(MSG_ERROR,
        "Found newline in value for %s; not returning it",
        var);
    os_free(ret);
    ret = ((void*)0);
   }

   return ret;
  }
 }

 return ((void*)0);
}
