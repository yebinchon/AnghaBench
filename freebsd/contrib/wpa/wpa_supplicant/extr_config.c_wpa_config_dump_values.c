
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int dummy; } ;
struct global_parse_data {int (* get ) (int ,struct wpa_config*,long,char*,size_t,int) ;scalar_t__ param1; int name; } ;


 size_t NUM_GLOBAL_FIELDS ;
 struct global_parse_data* global_fields ;
 int stub1 (int ,struct wpa_config*,long,char*,size_t,int) ;

int wpa_config_dump_values(struct wpa_config *config, char *buf, size_t buflen)
{
 int result = 0;
 size_t i;

 for (i = 0; i < NUM_GLOBAL_FIELDS; i++) {
  const struct global_parse_data *field = &global_fields[i];
  int tmp;

  if (!field->get)
   continue;

  tmp = field->get(field->name, config, (long) field->param1,
     buf, buflen, 1);
  if (tmp < 0)
   return -1;
  buf += tmp;
  buflen -= tmp;
  result += tmp;
 }
 return result;
}
