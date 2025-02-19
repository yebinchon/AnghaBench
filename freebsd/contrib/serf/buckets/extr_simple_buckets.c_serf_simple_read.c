
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ remaining; char* current; } ;
typedef TYPE_1__ simple_context_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 scalar_t__ SERF_READ_ALL_AVAIL ;

__attribute__((used)) static apr_status_t serf_simple_read(serf_bucket_t *bucket,
                                     apr_size_t requested,
                                     const char **data, apr_size_t *len)
{
    simple_context_t *ctx = bucket->data;

    if (requested == SERF_READ_ALL_AVAIL || requested > ctx->remaining)
        requested = ctx->remaining;

    *data = ctx->current;
    *len = requested;

    ctx->current += requested;
    ctx->remaining -= requested;

    return ctx->remaining ? APR_SUCCESS : APR_EOF;
}
