
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {scalar_t__ state; int amt_read; } ;
typedef TYPE_2__ headers_context_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 scalar_t__ READ_DONE ;
 int consume_chunk (TYPE_2__*) ;
 int select_value (TYPE_2__*,char const**,scalar_t__*) ;

__attribute__((used)) static apr_status_t serf_headers_read(serf_bucket_t *bucket,
                                      apr_size_t requested,
                                      const char **data, apr_size_t *len)
{
    headers_context_t *ctx = bucket->data;
    apr_size_t avail;

    select_value(ctx, data, &avail);
    if (ctx->state == READ_DONE) {
        *len = avail;
        return APR_EOF;
    }

    if (requested >= avail) {

        *len = avail;


        return consume_chunk(ctx);
    }


    *len = requested;
    ctx->amt_read += requested;


    return APR_SUCCESS;
}
