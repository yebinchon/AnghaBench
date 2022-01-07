
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int free_list; int pool; } ;
typedef TYPE_1__ range_index_t ;
struct TYPE_7__ {int * next; int prev; int * right; int left; void* target_offset; void* limit; void* offset; } ;
typedef TYPE_2__ range_index_node_t ;
typedef void* apr_size_t ;


 TYPE_2__* alloc_block (int ,int *) ;

__attribute__((used)) static range_index_node_t *
alloc_range_index_node(range_index_t *ndx,
                       apr_size_t offset,
                       apr_size_t limit,
                       apr_size_t target_offset)
{
  range_index_node_t *const node = alloc_block(ndx->pool, &ndx->free_list);
  node->offset = offset;
  node->limit = limit;
  node->target_offset = target_offset;
  node->left = node->right = ((void*)0);
  node->prev = node->next = ((void*)0);
  return node;
}
