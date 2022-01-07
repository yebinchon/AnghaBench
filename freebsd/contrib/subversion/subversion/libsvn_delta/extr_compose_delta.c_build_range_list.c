
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int range_list_node_t ;
struct TYPE_5__ {TYPE_2__* tree; } ;
typedef TYPE_1__ range_index_t ;
struct TYPE_6__ {scalar_t__ offset; scalar_t__ limit; scalar_t__ target_offset; struct TYPE_6__* next; } ;
typedef TYPE_2__ range_index_node_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int * alloc_range_list (int **,int **,TYPE_1__*,int ,scalar_t__,scalar_t__,scalar_t__ const) ;
 int range_from_source ;
 int range_from_target ;

__attribute__((used)) static range_list_node_t *
build_range_list(apr_size_t offset, apr_size_t limit, range_index_t *ndx)
{
  range_list_node_t *range_list = ((void*)0);
  range_list_node_t *last_range = ((void*)0);
  range_index_node_t *node = ndx->tree;

  while (offset < limit)
    {
      if (node == ((void*)0))
        return alloc_range_list(&range_list, &last_range, ndx,
                                range_from_source,
                                offset, limit, 0);

      if (offset < node->offset)
        {
          if (limit <= node->offset)
            return alloc_range_list(&range_list, &last_range, ndx,
                                    range_from_source,
                                    offset, limit, 0);
          else
            {
              alloc_range_list(&range_list, &last_range, ndx,
                               range_from_source,
                               offset, node->offset, 0);
              offset = node->offset;
            }
        }
      else
        {






          if (offset >= node->limit)
            node = node->next;
          else
            {
              const apr_size_t target_offset =
                offset - node->offset + node->target_offset;

              if (limit <= node->limit)
                return alloc_range_list(&range_list, &last_range, ndx,
                                        range_from_target,
                                        offset, limit, target_offset);
              else
                {
                  alloc_range_list(&range_list, &last_range, ndx,
                                   range_from_target,
                                   offset, node->limit, target_offset);
                  offset = node->limit;
                  node = node->next;
                }
            }
        }
    }


  SVN_ERR_MALFUNCTION_NO_RETURN();
}
