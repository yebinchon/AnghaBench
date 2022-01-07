
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int wps_nfc_pw_from_config; int wmm_ac_params; int changed_parameters; } ;
struct global_parse_data {char* name; int changed_flag; scalar_t__ (* parser ) (struct global_parse_data const*,struct wpa_config*,int,char*) ;} ;


 int CFG_CHANGED_NFC_PASSWORD_TOKEN ;
 int MSG_ERROR ;
 size_t NUM_GLOBAL_FIELDS ;
 struct global_parse_data* global_fields ;
 scalar_t__ hostapd_config_wmm_ac (int ,char*,char*) ;
 char* os_strchr (char*,char) ;
 size_t os_strlen (char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 scalar_t__ stub1 (struct global_parse_data const*,struct wpa_config*,int,char*) ;
 int wpa_printf (int ,char*,int,...) ;

int wpa_config_process_global(struct wpa_config *config, char *pos, int line)
{
 size_t i;
 int ret = 0;

 for (i = 0; i < NUM_GLOBAL_FIELDS; i++) {
  const struct global_parse_data *field = &global_fields[i];
  size_t flen = os_strlen(field->name);
  if (os_strncmp(pos, field->name, flen) != 0 ||
      pos[flen] != '=')
   continue;

  if (field->parser(field, config, line, pos + flen + 1)) {
   wpa_printf(MSG_ERROR, "Line %d: failed to "
       "parse '%s'.", line, pos);
   ret = -1;
  }
  if (field->changed_flag == CFG_CHANGED_NFC_PASSWORD_TOKEN)
   config->wps_nfc_pw_from_config = 1;
  config->changed_parameters |= field->changed_flag;
  break;
 }
 if (i == NUM_GLOBAL_FIELDS) {
  if (line < 0)
   return -1;
  wpa_printf(MSG_ERROR, "Line %d: unknown global field '%s'.",
      line, pos);
  ret = -1;
 }

 return ret;
}
