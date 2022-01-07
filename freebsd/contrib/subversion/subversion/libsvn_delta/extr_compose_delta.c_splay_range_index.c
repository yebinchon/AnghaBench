
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* tree; } ;
typedef TYPE_1__ range_index_t ;
struct TYPE_5__ {scalar_t__ offset; int * prev; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_2__ range_index_node_t ;
typedef scalar_t__ apr_size_t ;


 int assert (int) ;

__attribute__((used)) static void
splay_range_index(apr_size_t offset, range_index_t *ndx)
{
  range_index_node_t *tree = ndx->tree;
  range_index_node_t scratch_node;
  range_index_node_t *left, *right;

  if (tree == ((void*)0))
    return;

  scratch_node.left = scratch_node.right = ((void*)0);
  left = right = &scratch_node;

  for (;;)
    {
      if (offset < tree->offset)
        {
          if (tree->left != ((void*)0)
              && offset < tree->left->offset)
            {

              range_index_node_t *const node = tree->left;
              tree->left = node->right;
              node->right = tree;
              tree = node;
            }
          if (tree->left == ((void*)0))
            break;


          right->left = tree;
          right = tree;
          tree = tree->left;
        }
      else if (offset > tree->offset)
        {
          if (tree->right != ((void*)0)
              && offset > tree->right->offset)
            {

              range_index_node_t *const node = tree->right;
              tree->right = node->left;
              node->left = tree;
              tree = node;
            }
          if (tree->right == ((void*)0))
            break;


          left->right = tree;
          left = tree;
          tree = tree->right;
        }
      else
        break;
    }


  left->right = tree->left;
  right->left = tree->right;
  tree->left = scratch_node.right;
  tree->right = scratch_node.left;
  if (offset < tree->offset && tree->left != ((void*)0))
    {
      if (tree->left->right == ((void*)0))
        {

          range_index_node_t *const node = tree->left;
          tree->left = node->right;
          node->right = tree;
          tree = node;
        }
      else
        {

          range_index_node_t **nodep = &tree->left;
          while ((*nodep)->right != ((void*)0))
            nodep = &(*nodep)->right;


          right = tree;
          left = tree->left;
          tree = *nodep;
          *nodep = tree->left;
          right->left = tree->right;
          tree->left = left;
          tree->right = right;
        }
    }


  assert((offset >= tree->offset)
         || ((tree->left == ((void*)0))
             && (tree->prev == ((void*)0))));
  ndx->tree = tree;
}
