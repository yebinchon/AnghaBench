
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views {int dummy; } ;
struct config_file {scalar_t__ do_ip6; } ;
struct acl_list {int tree; int region; } ;


 int acl_list_str_cfg (struct acl_list*,char*,char*,int ) ;
 int addr_tree_init (int *) ;
 int addr_tree_init_parents (int *) ;
 int read_acl_list (struct acl_list*,struct config_file*) ;
 int read_acl_tag_actions (struct acl_list*,struct config_file*) ;
 int read_acl_tag_datas (struct acl_list*,struct config_file*) ;
 int read_acl_tags (struct acl_list*,struct config_file*) ;
 int read_acl_view (struct acl_list*,struct config_file*,struct views*) ;
 int regional_free_all (int ) ;

int
acl_list_apply_cfg(struct acl_list* acl, struct config_file* cfg,
 struct views* v)
{
 regional_free_all(acl->region);
 addr_tree_init(&acl->tree);
 if(!read_acl_list(acl, cfg))
  return 0;
 if(!read_acl_view(acl, cfg, v))
  return 0;
 if(!read_acl_tags(acl, cfg))
  return 0;
 if(!read_acl_tag_actions(acl, cfg))
  return 0;
 if(!read_acl_tag_datas(acl, cfg))
  return 0;

 if(!acl_list_str_cfg(acl, "0.0.0.0/0", "refuse", 0))
  return 0;
 if(!acl_list_str_cfg(acl, "127.0.0.0/8", "allow", 0))
  return 0;
 if(cfg->do_ip6) {
  if(!acl_list_str_cfg(acl, "::0/0", "refuse", 0))
   return 0;
  if(!acl_list_str_cfg(acl, "::1", "allow", 0))
   return 0;
  if(!acl_list_str_cfg(acl, "::ffff:127.0.0.1", "allow", 0))
   return 0;
 }
 addr_tree_init_parents(&acl->tree);
 return 1;
}
