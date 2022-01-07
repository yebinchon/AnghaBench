
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int* sae_groups; } ;
struct global_parse_data {int dummy; } ;


 int MSG_ERROR ;
 int os_free (int*) ;
 int* wpa_config_parse_int_array (char const*) ;
 int wpa_printf (int ,char*,int,char const*) ;

__attribute__((used)) static int wpa_config_process_sae_groups(
 const struct global_parse_data *data,
 struct wpa_config *config, int line, const char *pos)
{
 int *groups = wpa_config_parse_int_array(pos);
 if (groups == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid sae_groups '%s'",
      line, pos);
  return -1;
 }

 os_free(config->sae_groups);
 config->sae_groups = groups;

 return 0;
}
