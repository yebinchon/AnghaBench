
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_2__ headers_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 scalar_t__ READ_DONE ;
 scalar_t__ READ_TERM ;
 int select_value (TYPE_2__*,char const**,int *) ;

__attribute__((used)) static apr_status_t serf_headers_peek(serf_bucket_t *bucket,
                                      const char **data,
                                      apr_size_t *len)
{
    headers_context_t *ctx = bucket->data;

    select_value(ctx, data, len);


    if (ctx->state == READ_DONE || ctx->state == READ_TERM)
        return APR_EOF;

    return APR_SUCCESS;
}
