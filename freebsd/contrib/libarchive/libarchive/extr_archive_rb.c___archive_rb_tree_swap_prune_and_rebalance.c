
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;


 int F ;
 int RB_BLACK_P (struct archive_rb_node*) ;
 int RB_COPY_PROPERTIES (struct archive_rb_node*,struct archive_rb_node*) ;
 unsigned int const RB_DIR_OTHER ;
 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 int RB_MARK_BLACK (struct archive_rb_node*) ;
 size_t RB_POSITION (struct archive_rb_node*) ;
 scalar_t__ RB_RED_P (struct archive_rb_node*) ;
 int RB_SET_FATHER (struct archive_rb_node*,struct archive_rb_node*) ;
 int RB_SET_POSITION (struct archive_rb_node*,unsigned int const) ;
 int __archive_rb_tree_removal_rebalance (struct archive_rb_tree*,struct archive_rb_node*,unsigned int const) ;

__attribute__((used)) static void
__archive_rb_tree_swap_prune_and_rebalance(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, struct archive_rb_node *standin)
{
 const unsigned int standin_which = RB_POSITION(standin);
 unsigned int standin_other = standin_which ^ RB_DIR_OTHER;
 struct archive_rb_node *standin_son;
 struct archive_rb_node *standin_father = RB_FATHER(standin);
 int rebalance = RB_BLACK_P(standin);

 if (standin_father == self) {




  standin_son = standin->rb_nodes[standin_which];
 } else {




  standin_son = standin->rb_nodes[standin_other];
 }

 if (RB_RED_P(standin_son)) {




  RB_MARK_BLACK(standin_son);
  rebalance = F;

  if (standin_father != self) {



   RB_SET_FATHER(standin_son, standin_father);
   RB_SET_POSITION(standin_son, standin_which);
  }
 }

 if (standin_father == self) {
  standin_father = standin;
 } else {







  standin_father->rb_nodes[standin_which] = standin_son;



  standin->rb_nodes[standin_other] = self->rb_nodes[standin_other];
  RB_SET_FATHER(standin->rb_nodes[standin_other], standin);




  standin_other = standin_which;
 }





 standin->rb_nodes[standin_other] = self->rb_nodes[standin_other];
 RB_SET_FATHER(standin->rb_nodes[standin_other], standin);





 RB_COPY_PROPERTIES(standin, self);
 RB_SET_FATHER(standin, RB_FATHER(self));
 RB_FATHER(standin)->rb_nodes[RB_POSITION(standin)] = standin;

 if (rebalance)
  __archive_rb_tree_removal_rebalance(rbt, standin_father, standin_which);
}
