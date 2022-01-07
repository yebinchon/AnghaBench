
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strbytelist {struct config_strbytelist* str2; struct config_strbytelist* str; struct config_strbytelist* next; int str2len; } ;
struct config_file {struct config_strbytelist* acl_tags; } ;
struct acl_list {int dummy; } ;


 int acl_list_tags_cfg (struct acl_list*,struct config_strbytelist*,struct config_strbytelist*,int ) ;
 int config_del_strbytelist (struct config_strbytelist*) ;
 int free (struct config_strbytelist*) ;
 int log_assert (int) ;

__attribute__((used)) static int
read_acl_tags(struct acl_list* acl, struct config_file* cfg)
{
 struct config_strbytelist* np, *p = cfg->acl_tags;
 cfg->acl_tags = ((void*)0);
 while(p) {
  log_assert(p->str && p->str2);
  if(!acl_list_tags_cfg(acl, p->str, p->str2, p->str2len)) {
   config_del_strbytelist(p);
   return 0;
  }

  np = p->next;
  free(p->str);
  free(p->str2);
  free(p);
  p = np;
 }
 return 1;
}
