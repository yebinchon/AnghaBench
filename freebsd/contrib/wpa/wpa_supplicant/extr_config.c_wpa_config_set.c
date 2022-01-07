
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
struct parse_data {int (* parser ) (struct parse_data const*,struct wpa_ssid*,int,char const*) ;int name; } ;


 int MSG_ERROR ;
 size_t NUM_SSID_FIELDS ;
 scalar_t__ os_strcmp (char const*,int ) ;
 struct parse_data* ssid_fields ;
 int stub1 (struct parse_data const*,struct wpa_ssid*,int,char const*) ;
 int wpa_printf (int ,char*,int,char const*,...) ;

int wpa_config_set(struct wpa_ssid *ssid, const char *var, const char *value,
     int line)
{
 size_t i;
 int ret = 0;

 if (ssid == ((void*)0) || var == ((void*)0) || value == ((void*)0))
  return -1;

 for (i = 0; i < NUM_SSID_FIELDS; i++) {
  const struct parse_data *field = &ssid_fields[i];
  if (os_strcmp(var, field->name) != 0)
   continue;

  ret = field->parser(field, ssid, line, value);
  if (ret < 0) {
   if (line) {
    wpa_printf(MSG_ERROR, "Line %d: failed to "
        "parse %s '%s'.", line, var, value);
   }
   ret = -1;
  }
  break;
 }
 if (i == NUM_SSID_FIELDS) {
  if (line) {
   wpa_printf(MSG_ERROR, "Line %d: unknown network field "
       "'%s'.", line, var);
  }
  ret = -1;
 }

 return ret;
}
