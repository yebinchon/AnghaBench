
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int dummy; } ;
struct config_str2list {struct config_str2list* str2; struct config_str2list* str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* acl_view; } ;
struct acl_list {int dummy; } ;


 int acl_list_view_cfg (struct acl_list*,struct config_str2list*,struct config_str2list*,struct views*) ;
 int free (struct config_str2list*) ;
 int log_assert (int) ;

__attribute__((used)) static int
read_acl_view(struct acl_list* acl, struct config_file* cfg, struct views* v)
{
 struct config_str2list* np, *p = cfg->acl_view;
 cfg->acl_view = ((void*)0);
 while(p) {
  log_assert(p->str && p->str2);
  if(!acl_list_view_cfg(acl, p->str, p->str2, v)) {
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
