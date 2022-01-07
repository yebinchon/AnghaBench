
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {int rb_left; int * rb_nodes; } ;


 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 unsigned int RB_POSITION (struct archive_rb_node*) ;
 int __archive_rb_tree_removal_rebalance (struct archive_rb_tree*,struct archive_rb_node*,unsigned int const) ;

__attribute__((used)) static void
__archive_rb_tree_prune_node(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, int rebalance)
{
 const unsigned int which = RB_POSITION(self);
 struct archive_rb_node *father = RB_FATHER(self);





 father->rb_nodes[which] = self->rb_left;




 if (rebalance)
  __archive_rb_tree_removal_rebalance(rbt, father, which);
}
