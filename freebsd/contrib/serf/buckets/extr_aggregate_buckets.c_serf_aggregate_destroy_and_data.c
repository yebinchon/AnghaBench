
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int allocator; TYPE_3__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_9__ {struct TYPE_9__* next; int bucket; } ;
typedef TYPE_2__ bucket_list_t ;
struct TYPE_10__ {TYPE_2__* list; scalar_t__ bucket_owner; } ;
typedef TYPE_3__ aggregate_context_t ;


 int cleanup_aggregate (TYPE_3__*,int ) ;
 int serf_bucket_destroy (int ) ;
 int serf_bucket_mem_free (int ,TYPE_2__*) ;
 int serf_default_destroy_and_data (TYPE_1__*) ;

__attribute__((used)) static void serf_aggregate_destroy_and_data(serf_bucket_t *bucket)
{
    aggregate_context_t *ctx = bucket->data;
    bucket_list_t *next_ctx;

    while (ctx->list) {
        if (ctx->bucket_owner) {
            serf_bucket_destroy(ctx->list->bucket);
        }
        next_ctx = ctx->list->next;
        serf_bucket_mem_free(bucket->allocator, ctx->list);
        ctx->list = next_ctx;
    }
    cleanup_aggregate(ctx, bucket->allocator);

    serf_default_destroy_and_data(bucket);
}
