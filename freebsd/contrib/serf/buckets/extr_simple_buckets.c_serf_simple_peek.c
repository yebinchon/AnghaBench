
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* current; int remaining; } ;
typedef TYPE_1__ simple_context_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EOF ;

__attribute__((used)) static apr_status_t serf_simple_peek(serf_bucket_t *bucket,
                                     const char **data,
                                     apr_size_t *len)
{
    simple_context_t *ctx = bucket->data;


    *data = ctx->current;
    *len = ctx->remaining;


    return APR_EOF;
}
