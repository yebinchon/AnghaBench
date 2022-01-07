
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_7__ {TYPE_2__* tree; } ;
typedef TYPE_1__ range_index_t ;
struct TYPE_8__ {scalar_t__ offset; scalar_t__ limit; struct TYPE_8__* prev; struct TYPE_8__* next; struct TYPE_8__* right; struct TYPE_8__* left; scalar_t__ target_offset; } ;
typedef TYPE_2__ range_index_node_t ;
typedef scalar_t__ apr_size_t ;


 TYPE_2__* alloc_range_index_node (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int assert (int ) ;
 int clean_tree (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
insert_range(apr_size_t offset, apr_size_t limit, apr_size_t target_offset,
             range_index_t *ndx)
{
  range_index_node_t *node = ((void*)0);

  if (ndx->tree == ((void*)0))
    {
      node = alloc_range_index_node(ndx, offset, limit, target_offset);
      ndx->tree = node;
    }
  else
    {
      if (offset == ndx->tree->offset
          && limit > ndx->tree->limit)
        {
          ndx->tree->limit = limit;
          ndx->tree->target_offset = target_offset;
          clean_tree(ndx, limit);
        }
      else if (offset > ndx->tree->offset
               && limit > ndx->tree->limit)
        {



          const svn_boolean_t insert_range_p =
            (!ndx->tree->next
             || ndx->tree->limit < ndx->tree->next->offset
             || limit > ndx->tree->next->limit);

          if (insert_range_p)
            {


              if (ndx->tree->prev && ndx->tree->prev->limit > offset)
                {

                  ndx->tree->offset = offset;
                  ndx->tree->limit = limit;
                  ndx->tree->target_offset = target_offset;
                }
              else
                {

                  node = alloc_range_index_node(ndx, offset, limit,
                                                target_offset);
                  if ((node->next = ndx->tree->next) != ((void*)0))
                    node->next->prev = node;
                  ndx->tree->next = node;
                  node->prev = ndx->tree;

                  node->right = ndx->tree->right;
                  ndx->tree->right = ((void*)0);
                  node->left = ndx->tree;
                  ndx->tree = node;
                }
              clean_tree(ndx, limit);
            }
          else
                                  ;
        }
      else if (offset < ndx->tree->offset)
        {
          assert(ndx->tree->left == ((void*)0));


          node = alloc_range_index_node(ndx, offset, limit, target_offset);
          node->left = node->prev = ((void*)0);
          node->right = node->next = ndx->tree;
          ndx->tree = node->next->prev = node;
          clean_tree(ndx, limit);
        }
      else
                              ;
    }
}
