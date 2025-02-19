
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {scalar_t__ state; int chunk; } ;
typedef TYPE_2__ chunk_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EAGAIN ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 scalar_t__ STATE_CHUNK ;
 scalar_t__ STATE_FETCH ;
 int serf_bucket_readline (int ,int,int*,char const**,int *) ;

__attribute__((used)) static apr_status_t serf_chunk_readline(serf_bucket_t *bucket,
                                         int acceptable, int *found,
                                         const char **data, apr_size_t *len)
{
    chunk_context_t *ctx = bucket->data;
    apr_status_t status;

    status = serf_bucket_readline(ctx->chunk, acceptable, found, data, len);


    if (APR_STATUS_IS_EOF(status) && ctx->state == STATE_CHUNK) {
        status = APR_EAGAIN;
        ctx->state = STATE_FETCH;
    }

    return status;
}
