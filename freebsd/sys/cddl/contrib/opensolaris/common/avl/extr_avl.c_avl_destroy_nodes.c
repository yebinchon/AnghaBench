
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t avl_offset; int avl_numnodes; TYPE_2__* avl_root; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_12__ {struct TYPE_12__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;


 int ASSERT (int) ;
 TYPE_2__* AVL_DATA2NODE (void*,size_t) ;
 void* AVL_NODE2DATA (TYPE_2__*,size_t) ;
 int AVL_XBALANCE (TYPE_2__*) ;
 uintptr_t AVL_XCHILD (TYPE_2__*) ;
 TYPE_2__* AVL_XPARENT (TYPE_2__*) ;
 uintptr_t CHILDBIT ;
 void* avl_first (TYPE_1__*) ;

void *
avl_destroy_nodes(avl_tree_t *tree, void **cookie)
{
 avl_node_t *node;
 avl_node_t *parent;
 int child;
 void *first;
 size_t off = tree->avl_offset;




 if (*cookie == ((void*)0)) {
  first = avl_first(tree);




  if (first == ((void*)0)) {
   *cookie = (void *)CHILDBIT;
   return (((void*)0));
  }

  node = AVL_DATA2NODE(first, off);
  parent = AVL_XPARENT(node);
  goto check_right_side;
 }




 parent = (avl_node_t *)((uintptr_t)(*cookie) & ~CHILDBIT);
 if (parent == ((void*)0)) {
  if (tree->avl_root != ((void*)0)) {
   ASSERT(tree->avl_numnodes == 1);
   tree->avl_root = ((void*)0);
   tree->avl_numnodes = 0;
  }
  return (((void*)0));
 }




 child = (uintptr_t)(*cookie) & CHILDBIT;
 parent->avl_child[child] = ((void*)0);
 ASSERT(tree->avl_numnodes > 1);
 --tree->avl_numnodes;




 if (child == 1 || parent->avl_child[1] == ((void*)0)) {
  node = parent;
  parent = AVL_XPARENT(parent);
  goto done;
 }




 node = parent->avl_child[1];
 while (node->avl_child[0] != ((void*)0)) {
  parent = node;
  node = node->avl_child[0];
 }





check_right_side:
 if (node->avl_child[1] != ((void*)0)) {
  ASSERT(AVL_XBALANCE(node) == 1);
  parent = node;
  node = node->avl_child[1];
  ASSERT(node->avl_child[0] == ((void*)0) &&
      node->avl_child[1] == ((void*)0));
 } else {
  ASSERT(AVL_XBALANCE(node) <= 0);
 }

done:
 if (parent == ((void*)0)) {
  *cookie = (void *)CHILDBIT;
  ASSERT(node == tree->avl_root);
 } else {
  *cookie = (void *)((uintptr_t)parent | AVL_XCHILD(node));
 }

 return (AVL_NODE2DATA(node, off));
}
