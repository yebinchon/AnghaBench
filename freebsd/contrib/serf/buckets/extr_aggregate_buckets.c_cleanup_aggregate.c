
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int serf_bucket_alloc_t ;
struct TYPE_5__ {int bucket; struct TYPE_5__* next; } ;
typedef TYPE_1__ bucket_list_t ;
struct TYPE_6__ {TYPE_1__* done; scalar_t__ bucket_owner; } ;
typedef TYPE_2__ aggregate_context_t ;


 int serf_bucket_destroy (int ) ;
 int serf_bucket_mem_free (int *,TYPE_1__*) ;

__attribute__((used)) static void cleanup_aggregate(aggregate_context_t *ctx,
                              serf_bucket_alloc_t *allocator)
{
    bucket_list_t *next_list;




    while (ctx->done != ((void*)0)) {
        next_list = ctx->done->next;

        if (ctx->bucket_owner) {
            serf_bucket_destroy(ctx->done->bucket);
        }
        serf_bucket_mem_free(allocator, ctx->done);

        ctx->done = next_list;
    }
}
