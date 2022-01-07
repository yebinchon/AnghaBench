
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* tree; } ;
typedef TYPE_2__ range_index_t ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ limit; struct TYPE_9__* left; struct TYPE_9__* right; } ;
typedef TYPE_3__ range_index_node_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_7__ {TYPE_3__* right; } ;


 int delete_subtree (TYPE_2__*,TYPE_3__* const) ;

__attribute__((used)) static void
clean_tree(range_index_t *ndx, apr_size_t limit)
{
  apr_size_t top_offset = limit + 1;
  range_index_node_t **nodep = &ndx->tree->right;
  while (*nodep != ((void*)0))
    {
      range_index_node_t *const node = *nodep;
      apr_size_t const offset =
        (node->right != ((void*)0) && node->right->offset < top_offset
         ? node->right->offset
         : top_offset);

      if (node->limit <= limit
          || (node->offset < limit && offset < limit))
        {
          *nodep = node->right;
          node->right = ((void*)0);
          delete_subtree(ndx, node);
        }
      else
        {
          top_offset = node->offset;
          nodep = &node->left;
        }
    }
}
