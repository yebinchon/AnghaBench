
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t avl_offset; int (* avl_compar ) (void const*,void*) ;TYPE_2__* avl_root; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_7__ {struct TYPE_7__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;
typedef int avl_index_t ;


 int ASSERT (int) ;
 int AVL_MKINDEX (TYPE_2__*,int) ;
 void* AVL_NODE2DATA (TYPE_2__*,size_t) ;
 int* avl_balance2child ;
 int stub1 (void const*,void*) ;

void *
avl_find(avl_tree_t *tree, const void *value, avl_index_t *where)
{
 avl_node_t *node;
 avl_node_t *prev = ((void*)0);
 int child = 0;
 int diff;
 size_t off = tree->avl_offset;

 for (node = tree->avl_root; node != ((void*)0);
     node = node->avl_child[child]) {

  prev = node;

  diff = tree->avl_compar(value, AVL_NODE2DATA(node, off));
  ASSERT(-1 <= diff && diff <= 1);
  if (diff == 0) {




   return (AVL_NODE2DATA(node, off));
  }
  child = avl_balance2child[1 + diff];

 }

 if (where != ((void*)0))
  *where = AVL_MKINDEX(prev, child);

 return (((void*)0));
}
