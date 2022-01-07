
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int state; int * last; int * list; } ;
typedef TYPE_1__ headers_context_t ;


 int READ_START ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_headers ;

serf_bucket_t *serf_bucket_headers_create(
    serf_bucket_alloc_t *allocator)
{
    headers_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->list = ((void*)0);
    ctx->last = ((void*)0);
    ctx->state = READ_START;

    return serf_bucket_create(&serf_bucket_type_headers, allocator, ctx);
}
