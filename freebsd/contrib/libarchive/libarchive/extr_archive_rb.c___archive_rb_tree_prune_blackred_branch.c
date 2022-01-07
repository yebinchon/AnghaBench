
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;


 int RB_COPY_PROPERTIES (struct archive_rb_node*,struct archive_rb_node*) ;
 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 size_t RB_POSITION (struct archive_rb_node*) ;
 int RB_SET_FATHER (struct archive_rb_node*,struct archive_rb_node*) ;

__attribute__((used)) static void
__archive_rb_tree_prune_blackred_branch(
    struct archive_rb_node *self, unsigned int which)
{
 struct archive_rb_node *father = RB_FATHER(self);
 struct archive_rb_node *son = self->rb_nodes[which];





 RB_COPY_PROPERTIES(son, self);
 father->rb_nodes[RB_POSITION(son)] = son;
 RB_SET_FATHER(son, father);
}
