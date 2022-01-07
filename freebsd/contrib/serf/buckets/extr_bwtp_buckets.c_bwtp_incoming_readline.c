
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {int body; } ;
typedef TYPE_2__ incoming_context_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;


 scalar_t__ serf_bucket_readline (int ,int,int*,char const**,int *) ;
 scalar_t__ wait_for_body (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static apr_status_t bwtp_incoming_readline(serf_bucket_t *bucket,
                                           int acceptable, int *found,
                                           const char **data, apr_size_t *len)
{
    incoming_context_t *ctx = bucket->data;
    apr_status_t rv;

    rv = wait_for_body(bucket, ctx);
    if (rv) {
        return rv;
    }


    return serf_bucket_readline(ctx->body, acceptable, found, data, len);
}
