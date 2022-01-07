
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_strlist {int dummy; } ;
struct config_file {int dummy; } ;
struct TYPE_2__ {struct config_strlist* first; } ;
struct config_collate_arg {TYPE_1__ list; scalar_t__ status; } ;
typedef int m ;


 int config_collate_func ;
 int config_delstrlist (struct config_strlist*) ;
 int config_get_option (struct config_file*,char const*,int ,struct config_collate_arg*) ;
 int memset (struct config_collate_arg*,int ,int) ;

int config_get_option_list(struct config_file* cfg, const char* opt,
 struct config_strlist** list)
{
 struct config_collate_arg m;
 memset(&m, 0, sizeof(m));
 *list = ((void*)0);
 if(!config_get_option(cfg, opt, config_collate_func, &m))
  return 1;
 if(m.status) {
  config_delstrlist(m.list.first);
  return 2;
 }
 *list = m.list.first;
 return 0;
}
