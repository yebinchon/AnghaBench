
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int incoming_context_t ;
typedef int apr_status_t ;


 int wait_for_body (TYPE_1__*,int *) ;

apr_status_t serf_bucket_bwtp_incoming_frame_wait_for_headers(
    serf_bucket_t *bucket)
{
    incoming_context_t *ctx = bucket->data;

    return wait_for_body(bucket, ctx);
}
