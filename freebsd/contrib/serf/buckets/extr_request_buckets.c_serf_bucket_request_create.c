
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {char const* method; char const* uri; int len; int * body; int headers; } ;
typedef TYPE_1__ request_context_t ;


 int LENGTH_UNKNOWN ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 int serf_bucket_headers_create (int *) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_request ;

serf_bucket_t *serf_bucket_request_create(
    const char *method,
    const char *URI,
    serf_bucket_t *body,
    serf_bucket_alloc_t *allocator)
{
    request_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->method = method;
    ctx->uri = URI;
    ctx->headers = serf_bucket_headers_create(allocator);
    ctx->body = body;
    ctx->len = LENGTH_UNKNOWN;

    return serf_bucket_create(&serf_bucket_type_request, allocator, ctx);
}
