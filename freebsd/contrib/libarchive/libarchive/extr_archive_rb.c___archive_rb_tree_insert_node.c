
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_rb_tree {struct archive_rb_node* rbt_root; TYPE_1__* rbt_ops; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; struct archive_rb_node* rb_right; struct archive_rb_node* rb_left; } ;
typedef int (* archive_rbto_compare_nodes_fn ) (struct archive_rb_node*,struct archive_rb_node*) ;
struct TYPE_2__ {int (* rbto_compare_nodes ) (struct archive_rb_node*,struct archive_rb_node*) ;} ;


 int F ;
 unsigned int RB_DIR_LEFT ;
 int RB_MARK_BLACK (struct archive_rb_node*) ;
 int RB_MARK_RED (struct archive_rb_node*) ;
 int RB_RED_P (struct archive_rb_node*) ;
 int RB_SENTINEL_P (struct archive_rb_node*) ;
 int RB_SET_FATHER (struct archive_rb_node*,struct archive_rb_node*) ;
 int RB_SET_POSITION (struct archive_rb_node*,unsigned int) ;
 int T ;
 int __archive_rb_tree_insert_rebalance (struct archive_rb_tree*,struct archive_rb_node*) ;
 int stub1 (struct archive_rb_node*,struct archive_rb_node*) ;

int
__archive_rb_tree_insert_node(struct archive_rb_tree *rbt,
    struct archive_rb_node *self)
{
 archive_rbto_compare_nodes_fn compare_nodes = rbt->rbt_ops->rbto_compare_nodes;
 struct archive_rb_node *parent, *tmp;
 unsigned int position;
 int rebalance;

 tmp = rbt->rbt_root;
 parent = (struct archive_rb_node *)(void *)&rbt->rbt_root;
 position = RB_DIR_LEFT;




 while (!RB_SENTINEL_P(tmp)) {
  const signed int diff = (*compare_nodes)(tmp, self);
  if (diff == 0) {



   return F;
  }
  parent = tmp;
  position = (diff > 0);
  tmp = parent->rb_nodes[position];
 }




 RB_SET_FATHER(self, parent);
 RB_SET_POSITION(self, position);
 if (parent == (struct archive_rb_node *)(void *)&rbt->rbt_root) {
  RB_MARK_BLACK(self);
  rebalance = F;
 } else {




  RB_MARK_RED(self);
  rebalance = RB_RED_P(parent);
 }
 self->rb_left = parent->rb_nodes[position];
 self->rb_right = parent->rb_nodes[position];
 parent->rb_nodes[position] = self;




 if (rebalance)
  __archive_rb_tree_insert_rebalance(rbt, self);

 return T;
}
