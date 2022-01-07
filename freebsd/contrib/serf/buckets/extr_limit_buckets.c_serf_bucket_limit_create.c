
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int remaining; int * stream; } ;
typedef TYPE_1__ limit_context_t ;
typedef int apr_uint64_t ;


 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_limit ;

serf_bucket_t *serf_bucket_limit_create(
    serf_bucket_t *stream, apr_uint64_t len, serf_bucket_alloc_t *allocator)
{
    limit_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->remaining = len;

    return serf_bucket_create(&serf_bucket_type_limit, allocator, ctx);
}
