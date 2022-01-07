
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t avl_offset; int * avl_root; } ;
typedef TYPE_1__ avl_tree_t ;
typedef int avl_node_t ;
typedef int avl_index_t ;


 int ASSERT (int ) ;
 int AVL_INDEX2CHILD (int ) ;
 int * AVL_INDEX2NODE (int ) ;
 void* AVL_NODE2DATA (int *,size_t) ;
 void* avl_walk (TYPE_1__*,void*,int) ;

void *
avl_nearest(avl_tree_t *tree, avl_index_t where, int direction)
{
 int child = AVL_INDEX2CHILD(where);
 avl_node_t *node = AVL_INDEX2NODE(where);
 void *data;
 size_t off = tree->avl_offset;

 if (node == ((void*)0)) {
  ASSERT(tree->avl_root == ((void*)0));
  return (((void*)0));
 }
 data = AVL_NODE2DATA(node, off);
 if (child != direction)
  return (data);

 return (avl_walk(tree, data, direction));
}
