
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_rb_tree {struct archive_rb_node* rbt_root; TYPE_1__* rbt_ops; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;
typedef int (* archive_rbto_compare_key_fn ) (struct archive_rb_node*,void const*) ;
struct TYPE_2__ {int (* rbto_compare_key ) (struct archive_rb_node*,void const*) ;} ;


 int RB_SENTINEL_P (struct archive_rb_node*) ;
 int stub1 (struct archive_rb_node*,void const*) ;

struct archive_rb_node *
__archive_rb_tree_find_node_leq(struct archive_rb_tree *rbt, const void *key)
{
 archive_rbto_compare_key_fn compare_key = rbt->rbt_ops->rbto_compare_key;
 struct archive_rb_node *parent = rbt->rbt_root;
 struct archive_rb_node *last = ((void*)0);

 while (!RB_SENTINEL_P(parent)) {
  const signed int diff = (*compare_key)(parent, key);
  if (diff == 0)
   return parent;
  if (diff > 0)
   last = parent;
  parent = parent->rb_nodes[diff > 0];
 }

 return last;
}
