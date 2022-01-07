
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int allocator; TYPE_3__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_11__ {char* reason; int code; int version; } ;
struct TYPE_13__ {TYPE_2__* stream; TYPE_2__* headers; TYPE_1__ sl; } ;
typedef TYPE_3__ response_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 TYPE_2__* SERF_BUCKET_SIMPLE_STRING_LEN (char*,int,int ) ;
 int SERF_HTTP_VERSION_MAJOR (int ) ;
 int SERF_HTTP_VERSION_MINOR (int ) ;
 int apr_snprintf (char*,int,char*,int ,int ,int ) ;
 int serf_bucket_aggregate_append (TYPE_2__*,TYPE_2__*) ;
 int serf_bucket_aggregate_become (TYPE_2__*) ;
 int serf_bucket_mem_free (int ,TYPE_3__*) ;
 TYPE_2__* serf_bucket_simple_copy_create (char*,int,int ) ;
 int strlen (char*) ;

apr_status_t serf_response_full_become_aggregate(serf_bucket_t *bucket)
{
    response_context_t *ctx = bucket->data;
    serf_bucket_t *bkt;
    char buf[256];
    int size;

    serf_bucket_aggregate_become(bucket);


    size = apr_snprintf(buf, 256, "HTTP/%d.%d %d ",
                        SERF_HTTP_VERSION_MAJOR(ctx->sl.version),
                        SERF_HTTP_VERSION_MINOR(ctx->sl.version),
                        ctx->sl.code);
    bkt = serf_bucket_simple_copy_create(buf, size,
                                         bucket->allocator);
    serf_bucket_aggregate_append(bucket, bkt);
    bkt = serf_bucket_simple_copy_create(ctx->sl.reason, strlen(ctx->sl.reason),
                                         bucket->allocator);
    serf_bucket_aggregate_append(bucket, bkt);
    bkt = SERF_BUCKET_SIMPLE_STRING_LEN("\r\n", 2,
                                        bucket->allocator);
    serf_bucket_aggregate_append(bucket, bkt);


    serf_bucket_aggregate_append(bucket, ctx->headers);
    serf_bucket_aggregate_append(bucket, ctx->stream);

    serf_bucket_mem_free(bucket->allocator, ctx);

    return APR_SUCCESS;
}
