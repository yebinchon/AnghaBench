
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {scalar_t__ remaining; int stream; } ;
typedef TYPE_2__ body_context_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;


 int APR_EOF ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 scalar_t__ REQUESTED_MAX ;
 int SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_ERROR_TRUNCATED_HTTP_RESPONSE ;
 scalar_t__ SERF_READ_ALL_AVAIL ;
 int serf_bucket_read (int ,scalar_t__,char const**,scalar_t__*) ;

__attribute__((used)) static apr_status_t serf_response_body_read(serf_bucket_t *bucket,
                                            apr_size_t requested,
                                            const char **data,
                                            apr_size_t *len)
{
    body_context_t *ctx = bucket->data;
    apr_status_t status;

    if (!ctx->remaining) {
        *len = 0;
        return APR_EOF;
    }

    if (requested == SERF_READ_ALL_AVAIL || requested > ctx->remaining) {
        if (ctx->remaining <= REQUESTED_MAX) {
            requested = (apr_size_t) ctx->remaining;
        } else {
            requested = REQUESTED_MAX;
        }
    }

    status = serf_bucket_read(ctx->stream, requested, data, len);

    if (!SERF_BUCKET_READ_ERROR(status)) {
        ctx->remaining -= *len;
    }

    if (APR_STATUS_IS_EOF(status) && ctx->remaining > 0) {

        status = SERF_ERROR_TRUNCATED_HTTP_RESPONSE;
    }

    return status;
}
