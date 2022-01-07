
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_7__ {size_t current_vec; size_t vecs_len; TYPE_1__* vecs; } ;
typedef TYPE_3__ iovec_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;
struct TYPE_5__ {char* iov_base; int iov_len; } ;


 int APR_EOF ;
 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t serf_iovec_peek(serf_bucket_t *bucket,
                                    const char **data,
                                    apr_size_t *len)
{
    iovec_context_t *ctx = bucket->data;

    if (ctx->current_vec >= ctx->vecs_len) {
        *len = 0;
        return APR_EOF;
    }



    *data = ctx->vecs[ctx->current_vec].iov_base;
    *len = ctx->vecs[ctx->current_vec].iov_len;

    if (ctx->current_vec + 1 == ctx->vecs_len)
        return APR_EOF;

    return APR_SUCCESS;
}
