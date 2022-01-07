
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ rbtree_type ;
struct TYPE_7__ {struct TYPE_7__* right; } ;
typedef TYPE_2__ rbnode_type ;


 TYPE_2__* RBTREE_NULL ;

rbnode_type *
rbtree_last (rbtree_type *rbtree)
{
 rbnode_type *node;

 for (node = rbtree->root; node->right != RBTREE_NULL; node = node->right);
 return node;
}
