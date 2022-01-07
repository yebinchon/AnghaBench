
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_9__ {TYPE_1__* headers; } ;
typedef TYPE_2__ incoming_context_t ;
typedef TYPE_2__ frame_context_t ;


 scalar_t__ SERF_BUCKET_IS_BWTP_FRAME (TYPE_1__*) ;
 scalar_t__ SERF_BUCKET_IS_BWTP_INCOMING_FRAME (TYPE_1__*) ;

serf_bucket_t *serf_bucket_bwtp_frame_get_headers(
    serf_bucket_t *bucket)
{
    if (SERF_BUCKET_IS_BWTP_FRAME(bucket)) {
        frame_context_t *ctx = bucket->data;

        return ctx->headers;
    }
    else if (SERF_BUCKET_IS_BWTP_INCOMING_FRAME(bucket)) {
        incoming_context_t *ctx = bucket->data;

        return ctx->headers;
    }

    return ((void*)0);
}
