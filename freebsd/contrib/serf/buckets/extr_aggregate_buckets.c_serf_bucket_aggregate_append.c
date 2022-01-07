
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int allocator; TYPE_3__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* bucket; } ;
typedef TYPE_2__ bucket_list_t ;
struct TYPE_9__ {TYPE_2__* last; TYPE_2__* list; } ;
typedef TYPE_3__ aggregate_context_t ;


 TYPE_2__* serf_bucket_mem_alloc (int ,int) ;

void serf_bucket_aggregate_append(
    serf_bucket_t *aggregate_bucket,
    serf_bucket_t *append_bucket)
{
    aggregate_context_t *ctx = aggregate_bucket->data;
    bucket_list_t *new_list;

    new_list = serf_bucket_mem_alloc(aggregate_bucket->allocator,
                                     sizeof(*new_list));
    new_list->bucket = append_bucket;
    new_list->next = ((void*)0);





    if (ctx->list == ((void*)0)) {
        ctx->list = new_list;
        ctx->last = new_list;
    }
    else {
        ctx->last->next = new_list;
        ctx->last = ctx->last->next;
    }
}
