
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* current; scalar_t__ remaining; } ;
typedef TYPE_1__ simple_context_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 int serf_util_readline (char**,scalar_t__*,int,int*) ;

__attribute__((used)) static apr_status_t serf_simple_readline(serf_bucket_t *bucket,
                                         int acceptable, int *found,
                                         const char **data, apr_size_t *len)
{
    simple_context_t *ctx = bucket->data;


    *data = ctx->current;
    serf_util_readline(&ctx->current, &ctx->remaining, acceptable, found);


    *len = ctx->current - *data;

    return ctx->remaining ? APR_SUCCESS : APR_EOF;
}
