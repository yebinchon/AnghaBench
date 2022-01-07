
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* original; char const* current; void* baton; int freefunc; int remaining; } ;
typedef TYPE_1__ simple_context_t ;
typedef int serf_simple_freefunc_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_simple ;

serf_bucket_t *serf_bucket_simple_create(
    const char *data,
    apr_size_t len,
    serf_simple_freefunc_t freefunc,
    void *freefunc_baton,
    serf_bucket_alloc_t *allocator)
{
    simple_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->original = ctx->current = data;
    ctx->remaining = len;
    ctx->freefunc = freefunc;
    ctx->baton = freefunc_baton;

    return serf_bucket_create(&serf_bucket_type_simple, allocator, ctx);
}
