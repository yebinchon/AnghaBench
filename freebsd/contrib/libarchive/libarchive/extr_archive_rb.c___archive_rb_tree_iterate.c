
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree {struct archive_rb_node* rbt_root; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;


 unsigned int const RB_DIR_OTHER ;
 struct archive_rb_node* RB_FATHER (struct archive_rb_node*) ;
 scalar_t__ RB_POSITION (struct archive_rb_node*) ;
 int RB_ROOT_P (struct archive_rb_tree*,struct archive_rb_node*) ;
 scalar_t__ RB_SENTINEL_P (struct archive_rb_node*) ;

struct archive_rb_node *
__archive_rb_tree_iterate(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, const unsigned int direction)
{
 const unsigned int other = direction ^ RB_DIR_OTHER;

 if (self == ((void*)0)) {
  self = rbt->rbt_root;
  if (RB_SENTINEL_P(self))
   return ((void*)0);
  while (!RB_SENTINEL_P(self->rb_nodes[direction]))
   self = self->rb_nodes[direction];
  return self;
 }




 if (RB_SENTINEL_P(self->rb_nodes[direction])) {
  while (!RB_ROOT_P(rbt, self)) {
   if (other == (unsigned int)RB_POSITION(self))
    return RB_FATHER(self);
   self = RB_FATHER(self);
  }
  return ((void*)0);
 }





 self = self->rb_nodes[direction];
 while (!RB_SENTINEL_P(self->rb_nodes[other]))
  self = self->rb_nodes[other];
 return self;
}
