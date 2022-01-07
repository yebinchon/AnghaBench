
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_str2list {scalar_t__ str2; scalar_t__ str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* acls; } ;
struct acl_list {int dummy; } ;


 int acl_list_str_cfg (struct acl_list*,scalar_t__,scalar_t__,int) ;
 int log_assert (int) ;

__attribute__((used)) static int
read_acl_list(struct acl_list* acl, struct config_file* cfg)
{
 struct config_str2list* p;
 for(p = cfg->acls; p; p = p->next) {
  log_assert(p->str && p->str2);
  if(!acl_list_str_cfg(acl, p->str, p->str2, 1))
   return 0;
 }
 return 1;
}
