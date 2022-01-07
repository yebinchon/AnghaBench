
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; struct archive_rb_node* rb_right; struct archive_rb_node* rb_left; } ;


 scalar_t__ RB_BLACK_P (struct archive_rb_node*) ;
 unsigned int RB_DIR_OTHER ;
 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 int RB_MARK_BLACK (struct archive_rb_node*) ;
 int RB_MARK_RED (struct archive_rb_node*) ;
 unsigned int RB_POSITION (struct archive_rb_node*) ;
 scalar_t__ RB_RED_P (struct archive_rb_node*) ;
 scalar_t__ RB_ROOT_P (struct archive_rb_tree*,struct archive_rb_node*) ;
 int __archive_rb_tree_reparent_nodes (struct archive_rb_node*,unsigned int) ;

__attribute__((used)) static void
__archive_rb_tree_removal_rebalance(struct archive_rb_tree *rbt,
    struct archive_rb_node *parent, unsigned int which)
{

 while (RB_BLACK_P(parent->rb_nodes[which])) {
  unsigned int other = which ^ RB_DIR_OTHER;
  struct archive_rb_node *brother = parent->rb_nodes[other];

  if (brother == ((void*)0))
   return;




  if (RB_BLACK_P(parent)
      && RB_BLACK_P(brother->rb_left)
      && RB_BLACK_P(brother->rb_right)) {
   if (RB_RED_P(brother)) {
    __archive_rb_tree_reparent_nodes(parent, other);
    brother = parent->rb_nodes[other];
    if (brother == ((void*)0))
     return;
   } else {
    RB_MARK_RED(brother);
    if (RB_ROOT_P(rbt, parent))
     return;
    which = RB_POSITION(parent);
    parent = RB_FATHER(parent);
    continue;
   }
  }




  if (RB_RED_P(parent)
      && RB_BLACK_P(brother)
      && RB_BLACK_P(brother->rb_left)
      && RB_BLACK_P(brother->rb_right)) {
   RB_MARK_BLACK(parent);
   RB_MARK_RED(brother);
   break;
  } else {




   if (RB_BLACK_P(brother->rb_nodes[other])) {
    __archive_rb_tree_reparent_nodes(brother, which);
    brother = parent->rb_nodes[other];
   }
   if (brother->rb_nodes[other] == ((void*)0))
    return;
   RB_MARK_BLACK(brother->rb_nodes[other]);
   __archive_rb_tree_reparent_nodes(parent, other);
   break;
  }
 }
}
