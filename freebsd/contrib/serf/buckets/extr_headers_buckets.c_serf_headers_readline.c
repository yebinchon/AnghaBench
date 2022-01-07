
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_2__ headers_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EGENERAL ;
 int APR_EOF ;
 scalar_t__ READ_CRLF ;
 scalar_t__ READ_DONE ;
 scalar_t__ READ_TERM ;
 int SERF_NEWLINE_CRLF ;
 int SERF_NEWLINE_NONE ;
 int consume_chunk (TYPE_2__*) ;
 int select_value (TYPE_2__*,char const**,int *) ;

__attribute__((used)) static apr_status_t serf_headers_readline(serf_bucket_t *bucket,
                                          int acceptable, int *found,
                                          const char **data, apr_size_t *len)
{
    headers_context_t *ctx = bucket->data;
    apr_status_t status;


    if ((acceptable & SERF_NEWLINE_CRLF) == 0)
        return APR_EGENERAL;


    select_value(ctx, data, len);
    if (ctx->state == READ_DONE)
        return APR_EOF;


    status = consume_chunk(ctx);


    *found = (ctx->state == READ_CRLF || ctx->state == READ_TERM)
        ? SERF_NEWLINE_CRLF : SERF_NEWLINE_NONE;

    return status;
}
