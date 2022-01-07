
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; int * type; int allocator; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {char const* method; char const* uri; TYPE_1__* body; int headers; } ;
typedef TYPE_2__ request_context_t ;


 int serf_bucket_headers_create (int ) ;
 TYPE_2__* serf_bucket_mem_alloc (int ,int) ;
 int serf_bucket_type_request ;

void serf_bucket_request_become(
    serf_bucket_t *bucket,
    const char *method,
    const char *uri,
    serf_bucket_t *body)
{
    request_context_t *ctx;

    ctx = serf_bucket_mem_alloc(bucket->allocator, sizeof(*ctx));
    ctx->method = method;
    ctx->uri = uri;
    ctx->headers = serf_bucket_headers_create(bucket->allocator);
    ctx->body = body;

    bucket->type = &serf_bucket_type_request;
    bucket->data = ctx;


}
