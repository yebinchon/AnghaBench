
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {int state; int body; } ;
typedef TYPE_2__ incoming_context_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ APR_STATUS_IS_EAGAIN (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 int STATE_DONE ;
 scalar_t__ serf_bucket_read (int ,scalar_t__,char const**,scalar_t__*) ;
 scalar_t__ wait_for_body (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static apr_status_t bwtp_incoming_read(serf_bucket_t *bucket,
                                       apr_size_t requested,
                                       const char **data, apr_size_t *len)
{
    incoming_context_t *ctx = bucket->data;
    apr_status_t rv;

    rv = wait_for_body(bucket, ctx);
    if (rv) {

        if (APR_STATUS_IS_EOF(rv) || APR_STATUS_IS_EAGAIN(rv)) {
            *len = 0;
        }
        return rv;
    }

    rv = serf_bucket_read(ctx->body, requested, data, len);
    if (APR_STATUS_IS_EOF(rv)) {
        ctx->state = STATE_DONE;
    }
    return rv;
}
