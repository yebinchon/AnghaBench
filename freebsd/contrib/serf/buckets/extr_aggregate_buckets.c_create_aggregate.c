
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int bucket_owner; int * hold_open_baton; int * hold_open; int * done; int * last; int * list; } ;
typedef TYPE_1__ aggregate_context_t ;


 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;

__attribute__((used)) static aggregate_context_t *create_aggregate(serf_bucket_alloc_t *allocator)
{
    aggregate_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));

    ctx->list = ((void*)0);
    ctx->last = ((void*)0);
    ctx->done = ((void*)0);
    ctx->hold_open = ((void*)0);
    ctx->hold_open_baton = ((void*)0);
    ctx->bucket_owner = 1;

    return ctx;
}
