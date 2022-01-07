
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {struct archive_rb_node* rbt_root; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; struct archive_rb_node* rb_right; } ;


 scalar_t__ RB_BLACK_P (struct archive_rb_node*) ;
 unsigned int RB_DIR_OTHER ;
 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 int RB_MARK_BLACK (struct archive_rb_node*) ;
 int RB_MARK_RED (struct archive_rb_node*) ;
 scalar_t__ RB_ROOT_P (struct archive_rb_tree*,struct archive_rb_node*) ;
 int __archive_rb_tree_reparent_nodes (struct archive_rb_node*,unsigned int) ;

__attribute__((used)) static void
__archive_rb_tree_insert_rebalance(struct archive_rb_tree *rbt,
    struct archive_rb_node *self)
{
 struct archive_rb_node * father = RB_FATHER(self);
 struct archive_rb_node * grandpa;
 struct archive_rb_node * uncle;
 unsigned int which;
 unsigned int other;

 for (;;) {




  grandpa = RB_FATHER(father);
  which = (father == grandpa->rb_right);
  other = which ^ RB_DIR_OTHER;
  uncle = grandpa->rb_nodes[other];

  if (RB_BLACK_P(uncle))
   break;







  RB_MARK_BLACK(uncle);
  RB_MARK_BLACK(father);
  if (RB_ROOT_P(rbt, grandpa)) {




   return;
  }
  RB_MARK_RED(grandpa);
  self = grandpa;
  father = RB_FATHER(self);
  if (RB_BLACK_P(father)) {



   return;
  }
 }




 if (self == father->rb_nodes[other]) {






  __archive_rb_tree_reparent_nodes(father, other);
 }






 __archive_rb_tree_reparent_nodes(grandpa, which);




 RB_MARK_BLACK(rbt->rbt_root);
}
