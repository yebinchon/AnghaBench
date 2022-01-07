
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {char* iov_base; scalar_t__ iov_len; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {size_t current_vec; size_t vecs_len; int offset; struct iovec* vecs; } ;
typedef TYPE_2__ iovec_context_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 int APR_SUCCESS ;
 scalar_t__ SERF_READ_ALL_AVAIL ;

__attribute__((used)) static apr_status_t serf_iovec_read_iovec(serf_bucket_t *bucket,
                                          apr_size_t requested,
                                          int vecs_size,
                                          struct iovec *vecs,
                                          int *vecs_used)
{
    iovec_context_t *ctx = bucket->data;

    *vecs_used = 0;


    for (; ctx->current_vec < ctx->vecs_len; ctx->current_vec++) {
        struct iovec vec = ctx->vecs[ctx->current_vec];
        apr_size_t remaining;

        if (requested != SERF_READ_ALL_AVAIL && requested <= 0)
            break;
        if (*vecs_used >= vecs_size)
            break;

        vecs[*vecs_used].iov_base = (char*)vec.iov_base + ctx->offset;
        remaining = vec.iov_len - ctx->offset;


        if (requested != SERF_READ_ALL_AVAIL && requested < remaining) {
            vecs[*vecs_used].iov_len = requested;
            ctx->offset += requested;
            requested = 0;
            (*vecs_used)++;
            break;
        } else {

            vecs[*vecs_used].iov_len = remaining;
            ctx->offset = 0;
            if (requested != SERF_READ_ALL_AVAIL)
                requested -= remaining;
            (*vecs_used)++;
        }
    }

    if (ctx->current_vec == ctx->vecs_len && !ctx->offset)
        return APR_EOF;

    return APR_SUCCESS;
}
