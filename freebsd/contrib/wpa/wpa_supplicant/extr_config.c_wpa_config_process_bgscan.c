
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int dummy; } ;
struct global_parse_data {int name; } ;


 int MSG_ERROR ;
 int os_free (char*) ;
 char* wpa_config_parse_string (char const*,size_t*) ;
 int wpa_global_config_parse_str (struct global_parse_data const*,struct wpa_config*,int,char*) ;
 int wpa_printf (int ,char*,int,int ) ;

__attribute__((used)) static int wpa_config_process_bgscan(const struct global_parse_data *data,
         struct wpa_config *config, int line,
         const char *pos)
{
 size_t len;
 char *tmp;
 int res;

 tmp = wpa_config_parse_string(pos, &len);
 if (tmp == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Line %d: failed to parse %s",
      line, data->name);
  return -1;
 }

 res = wpa_global_config_parse_str(data, config, line, tmp);
 os_free(tmp);
 return res;
}
