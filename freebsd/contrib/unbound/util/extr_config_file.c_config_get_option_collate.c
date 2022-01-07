
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {int dummy; } ;
struct config_file {int dummy; } ;


 char* config_collate_cat (struct config_strlist*) ;
 int config_delstrlist (struct config_strlist*) ;
 int config_get_option_list (struct config_file*,char const*,struct config_strlist**) ;

int
config_get_option_collate(struct config_file* cfg, const char* opt, char** str)
{
 struct config_strlist* list = ((void*)0);
 int r;
 *str = ((void*)0);
 if((r = config_get_option_list(cfg, opt, &list)) != 0)
  return r;
 *str = config_collate_cat(list);
 config_delstrlist(list);
 if(!*str) return 2;
 return 0;
}
