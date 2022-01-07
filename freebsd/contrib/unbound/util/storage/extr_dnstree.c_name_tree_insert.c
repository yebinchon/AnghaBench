
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {size_t len; int labs; TYPE_1__ node; int * parent; int dclass; int * name; } ;
typedef int rbtree_type ;


 int * rbtree_insert (int *,TYPE_1__*) ;

int name_tree_insert(rbtree_type* tree, struct name_tree_node* node,
        uint8_t* name, size_t len, int labs, uint16_t dclass)
{
 node->node.key = node;
 node->name = name;
 node->len = len;
 node->labs = labs;
 node->dclass = dclass;
 node->parent = ((void*)0);
 return rbtree_insert(tree, &node->node) != ((void*)0);
}
