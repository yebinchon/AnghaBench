
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int latency; TYPE_1__* ctx; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int apr_interval_time_t ;
struct TYPE_4__ {scalar_t__ proxy_address; } ;



apr_interval_time_t serf_connection_get_latency(serf_connection_t *conn)
{
    if (conn->ctx->proxy_address) {


        return -1;
    }

    return conn->latency;
}
