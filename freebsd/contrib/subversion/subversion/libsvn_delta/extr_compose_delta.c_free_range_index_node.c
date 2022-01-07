
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int free_list; } ;
typedef TYPE_3__ range_index_t ;
struct TYPE_11__ {TYPE_2__* next; TYPE_1__* prev; } ;
typedef TYPE_4__ range_index_node_t ;
struct TYPE_9__ {TYPE_1__* prev; } ;
struct TYPE_8__ {TYPE_2__* next; } ;


 int free_block (TYPE_4__*,int *) ;

__attribute__((used)) static void
free_range_index_node(range_index_t *ndx, range_index_node_t *node)
{
  if (node->next)
    node->next->prev = node->prev;
  if (node->prev)
    node->prev->next = node->next;
  free_block(node, &ndx->free_list);
}
