
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int serf_bucket_aggregate_eof_t ;
struct TYPE_5__ {void* hold_open_baton; int hold_open; } ;
typedef TYPE_2__ aggregate_context_t ;



void serf_bucket_aggregate_hold_open(serf_bucket_t *aggregate_bucket,
                                     serf_bucket_aggregate_eof_t fn,
                                     void *baton)
{
    aggregate_context_t *ctx = aggregate_bucket->data;
    ctx->hold_open = fn;
    ctx->hold_open_baton = baton;
}
