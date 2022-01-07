
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_allocator ;
struct TYPE_3__ {int * root; } ;
typedef TYPE_1__ index_tree ;


 int assert (int ) ;
 int index_tree_node_end (int *,int const*,void (*) (void*,int const*)) ;

__attribute__((used)) static void
index_tree_end(index_tree *tree, const lzma_allocator *allocator,
  void (*free_func)(void *node, const lzma_allocator *allocator))
{
 assert(free_func != ((void*)0));

 if (tree->root != ((void*)0))
  index_tree_node_end(tree->root, allocator, free_func);

 return;
}
