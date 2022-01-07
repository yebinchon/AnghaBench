
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int dummy; } ;
struct global_parse_data {int (* get ) (char const*,struct wpa_config*,long,char*,size_t,int ) ;scalar_t__ param1; int name; } ;


 size_t NUM_GLOBAL_FIELDS ;
 struct global_parse_data* global_fields ;
 scalar_t__ os_strcmp (char const*,int ) ;
 int stub1 (char const*,struct wpa_config*,long,char*,size_t,int ) ;

int wpa_config_get_value(const char *name, struct wpa_config *config,
    char *buf, size_t buflen)
{
 size_t i;

 for (i = 0; i < NUM_GLOBAL_FIELDS; i++) {
  const struct global_parse_data *field = &global_fields[i];

  if (os_strcmp(name, field->name) != 0)
   continue;
  if (!field->get)
   break;
  return field->get(name, config, (long) field->param1,
      buf, buflen, 0);
 }

 return -1;
}
