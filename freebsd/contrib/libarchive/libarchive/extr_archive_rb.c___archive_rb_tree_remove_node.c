
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {int dummy; } ;


 scalar_t__ RB_BLACK_P (struct archive_rb_node*) ;
 scalar_t__ RB_CHILDLESS_P (struct archive_rb_node*) ;
 unsigned int RB_DIR_LEFT ;
 unsigned int RB_DIR_OTHER ;
 unsigned int RB_DIR_RIGHT ;
 scalar_t__ RB_LEFT_SENTINEL_P (struct archive_rb_node*) ;
 unsigned int RB_POSITION (struct archive_rb_node*) ;
 int RB_ROOT_P (struct archive_rb_tree*,struct archive_rb_node*) ;
 int RB_TWOCHILDREN_P (struct archive_rb_node*) ;
 struct archive_rb_node* __archive_rb_tree_iterate (struct archive_rb_tree*,struct archive_rb_node*,unsigned int) ;
 int __archive_rb_tree_prune_blackred_branch (struct archive_rb_node*,unsigned int) ;
 int __archive_rb_tree_prune_node (struct archive_rb_tree*,struct archive_rb_node*,int const) ;
 int __archive_rb_tree_swap_prune_and_rebalance (struct archive_rb_tree*,struct archive_rb_node*,struct archive_rb_node*) ;

void
__archive_rb_tree_remove_node(struct archive_rb_tree *rbt,
    struct archive_rb_node *self)
{
 struct archive_rb_node *standin;
 unsigned int which;
 if (RB_CHILDLESS_P(self)) {
  const int rebalance = RB_BLACK_P(self) && !RB_ROOT_P(rbt, self);
  __archive_rb_tree_prune_node(rbt, self, rebalance);
  return;
 }
 if (!RB_TWOCHILDREN_P(self)) {
  which = RB_LEFT_SENTINEL_P(self) ? RB_DIR_RIGHT : RB_DIR_LEFT;
  __archive_rb_tree_prune_blackred_branch(self, which);
  return;
 }





 which = RB_POSITION(self) ^ RB_DIR_OTHER;





 standin = __archive_rb_tree_iterate(rbt, self, which);
 __archive_rb_tree_swap_prune_and_rebalance(rbt, self, standin);
}
