
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_priv {int n; int a; int region; } ;
struct config_file {int dummy; } ;


 int addr_tree_init (int *) ;
 int addr_tree_init_parents (int *) ;
 int name_tree_init (int *) ;
 int name_tree_init_parents (int *) ;
 int read_addrs (struct iter_priv*,struct config_file*) ;
 int read_names (struct iter_priv*,struct config_file*) ;
 int regional_free_all (int ) ;

int priv_apply_cfg(struct iter_priv* priv, struct config_file* cfg)
{

 regional_free_all(priv->region);
 addr_tree_init(&priv->a);
 name_tree_init(&priv->n);


 if(!read_addrs(priv, cfg))
  return 0;
 if(!read_names(priv, cfg))
  return 0;


 addr_tree_init_parents(&priv->a);
 name_tree_init_parents(&priv->n);
 return 1;
}
