
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {int len; } ;
typedef TYPE_2__ request_context_t ;
typedef int apr_int64_t ;



void serf_bucket_request_set_CL(
    serf_bucket_t *bucket,
    apr_int64_t len)
{
    request_context_t *ctx = (request_context_t *)bucket->data;

    ctx->len = len;
}
