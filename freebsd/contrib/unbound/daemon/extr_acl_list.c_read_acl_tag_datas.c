
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str3list {struct config_str3list* str3; struct config_str3list* str2; struct config_str3list* str; struct config_str3list* next; } ;
struct config_file {struct config_str3list* acl_tag_datas; } ;
struct acl_list {int dummy; } ;


 int acl_list_tag_data_cfg (struct acl_list*,struct config_file*,struct config_str3list*,struct config_str3list*,struct config_str3list*) ;
 int config_deltrplstrlist (struct config_str3list*) ;
 int free (struct config_str3list*) ;
 int log_assert (int) ;

__attribute__((used)) static int
read_acl_tag_datas(struct acl_list* acl, struct config_file* cfg)
{
 struct config_str3list* p, *np;
 p = cfg->acl_tag_datas;
 cfg->acl_tag_datas = ((void*)0);
 while(p) {
  log_assert(p->str && p->str2 && p->str3);
  if(!acl_list_tag_data_cfg(acl, cfg, p->str, p->str2, p->str3)) {
   config_deltrplstrlist(p);
   return 0;
  }

  np = p->next;
  free(p->str);
  free(p->str2);
  free(p->str3);
  free(p);
  p = np;
 }
 return 1;
}
