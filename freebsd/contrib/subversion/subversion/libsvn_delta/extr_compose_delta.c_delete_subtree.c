
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int range_index_t ;
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ range_index_node_t ;


 int free_range_index_node (int *,TYPE_1__*) ;

__attribute__((used)) static void
delete_subtree(range_index_t *ndx, range_index_node_t *node)
{
  if (node != ((void*)0))
    {
      delete_subtree(ndx, node->left);
      delete_subtree(ndx, node->right);
      free_range_index_node(ndx, node);
    }
}
