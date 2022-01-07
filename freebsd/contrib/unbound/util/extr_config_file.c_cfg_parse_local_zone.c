
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int local_zones; int local_zones_nodefault; } ;
typedef int buf ;


 int cfg_str2list_insert (int *,int ,int ) ;
 int cfg_strlist_insert (int *,int ) ;
 scalar_t__ isspace (unsigned char) ;
 char* last_space_pos (char const*) ;
 int log_err (char*,char const*) ;
 char* next_space_pos (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strdup (char const*) ;
 int strlcpy (char*,char const*,int) ;

int
cfg_parse_local_zone(struct config_file* cfg, const char* val)
{
 const char *type, *name_end, *name;
 char buf[256];


 name = val;
 while(*name && isspace((unsigned char)*name))
  name++;
 if(!*name) {
  log_err("syntax error: too short: %s", val);
  return 0;
 }
 name_end = next_space_pos(name);
 if(!name_end || !*name_end) {
  log_err("syntax error: expected zone type: %s", val);
  return 0;
 }
 if (name_end - name > 255) {
  log_err("syntax error: bad zone name: %s", val);
  return 0;
 }
 (void)strlcpy(buf, name, sizeof(buf));
 buf[name_end-name] = '\0';

 type = last_space_pos(name_end);
 while(type && *type && isspace((unsigned char)*type))
  type++;
 if(!type || !*type) {
  log_err("syntax error: expected zone type: %s", val);
  return 0;
 }

 if(strcmp(type, "nodefault")==0) {
  return cfg_strlist_insert(&cfg->local_zones_nodefault,
   strdup(name));
 } else {
  return cfg_str2list_insert(&cfg->local_zones, strdup(buf),
   strdup(type));
 }
}
