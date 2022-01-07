
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int tree; int region; } ;
struct config_file {int dummy; } ;


 int addr_tree_init (int *) ;
 int addr_tree_init_parents (int *) ;
 int read_tcl_list (struct tcl_list*,struct config_file*) ;
 int regional_free_all (int ) ;

int
tcl_list_apply_cfg(struct tcl_list* tcl, struct config_file* cfg)
{
 regional_free_all(tcl->region);
 addr_tree_init(&tcl->tree);
 if(!read_tcl_list(tcl, cfg))
  return 0;
 addr_tree_init_parents(&tcl->tree);
 return 1;
}
