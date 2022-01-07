
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {size_t len; int labs; int dclass; int * name; TYPE_1__ node; } ;
typedef int rbtree_type ;


 scalar_t__ rbtree_search (int *,struct name_tree_node*) ;

struct name_tree_node* name_tree_find(rbtree_type* tree, uint8_t* name,
        size_t len, int labs, uint16_t dclass)
{
 struct name_tree_node key;
 key.node.key = &key;
 key.name = name;
 key.len = len;
 key.labs = labs;
 key.dclass = dclass;
 return (struct name_tree_node*)rbtree_search(tree, &key);
}
