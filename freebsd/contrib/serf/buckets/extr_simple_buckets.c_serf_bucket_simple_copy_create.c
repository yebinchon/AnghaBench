
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remaining; int * baton; int freefunc; void* original; void* current; } ;
typedef TYPE_1__ simple_context_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int free_copied_data ;
 int memcpy (char*,char const*,int) ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 void* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_simple ;

serf_bucket_t *serf_bucket_simple_copy_create(
    const char *data, apr_size_t len,
    serf_bucket_alloc_t *allocator)
{
    simple_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));

    ctx->original = ctx->current = serf_bucket_mem_alloc(allocator, len);
    memcpy((char*)ctx->original, data, len);

    ctx->remaining = len;
    ctx->freefunc = free_copied_data;
    ctx->baton = allocator;

    return serf_bucket_create(&serf_bucket_type_simple, allocator, ctx);
}
