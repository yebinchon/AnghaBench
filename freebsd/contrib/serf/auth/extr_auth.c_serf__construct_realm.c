
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* proxy_address; } ;
typedef TYPE_3__ serf_context_t ;
struct TYPE_6__ {int port; int hostname; int scheme; } ;
struct TYPE_9__ {TYPE_3__* ctx; TYPE_1__ host_info; } ;
typedef TYPE_4__ serf_connection_t ;
typedef scalar_t__ peer_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int port; int hostname; } ;


 scalar_t__ HOST ;
 char const* apr_psprintf (int *,char*,int ,int ,char const*,...) ;

const char *serf__construct_realm(peer_t peer,
                                  serf_connection_t *conn,
                                  const char *realm_name,
                                  apr_pool_t *pool)
{
    if (peer == HOST) {
        return apr_psprintf(pool, "<%s://%s:%d> %s",
                            conn->host_info.scheme,
                            conn->host_info.hostname,
                            conn->host_info.port,
                            realm_name);
    } else {
        serf_context_t *ctx = conn->ctx;

        return apr_psprintf(pool, "<http://%s:%d> %s",
                            ctx->proxy_address->hostname,
                            ctx->proxy_address->port,
                            realm_name);
    }
}
