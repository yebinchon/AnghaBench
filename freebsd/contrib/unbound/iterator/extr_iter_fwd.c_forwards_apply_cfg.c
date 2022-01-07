
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forwards {int tree; } ;
struct config_file {int dummy; } ;


 int fwd_cmp ;
 int fwd_del_tree (struct iter_forwards*) ;
 int fwd_init_parents (struct iter_forwards*) ;
 int make_stub_holes (struct iter_forwards*,struct config_file*) ;
 int rbtree_create (int ) ;
 int read_forwards (struct iter_forwards*,struct config_file*) ;

int
forwards_apply_cfg(struct iter_forwards* fwd, struct config_file* cfg)
{
 fwd_del_tree(fwd);
 fwd->tree = rbtree_create(fwd_cmp);
 if(!fwd->tree)
  return 0;


 if(!read_forwards(fwd, cfg))
  return 0;
 if(!make_stub_holes(fwd, cfg))
  return 0;
 fwd_init_parents(fwd);
 return 1;
}
