
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_tree_ops {int dummy; } ;
struct archive_rb_tree {int rbt_root; struct archive_rb_tree_ops const* rbt_ops; } ;
struct archive_rb_node {int dummy; } ;


 struct archive_rb_node* RB_SENTINEL_NODE ;

void
__archive_rb_tree_init(struct archive_rb_tree *rbt,
    const struct archive_rb_tree_ops *ops)
{
 rbt->rbt_ops = ops;
 *((struct archive_rb_node **)&rbt->rbt_root) = RB_SENTINEL_NODE;
}
