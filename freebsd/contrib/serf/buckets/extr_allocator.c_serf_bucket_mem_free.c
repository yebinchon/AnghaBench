
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int allocator; TYPE_3__* freelist; int num_alloc; } ;
typedef TYPE_2__ serf_bucket_alloc_t ;
struct TYPE_5__ {int memnode; TYPE_3__* next; } ;
struct TYPE_7__ {scalar_t__ size; TYPE_1__ u; } ;
typedef TYPE_3__ node_header_t ;


 char* SIZEOF_NODE_HEADER_T ;
 scalar_t__ STANDARD_NODE_SIZE ;
 int abort () ;
 int apr_allocator_free (int ,int ) ;

void serf_bucket_mem_free(
    serf_bucket_alloc_t *allocator,
    void *block)
{
    node_header_t *node;

    --allocator->num_alloc;

    node = (node_header_t *)((char *)block - SIZEOF_NODE_HEADER_T);

    if (node->size == STANDARD_NODE_SIZE) {

        node->u.next = allocator->freelist;
        allocator->freelist = node;
    }
    else {






        apr_allocator_free(allocator->allocator, node->u.memnode);
    }
}
