
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dirty_pollset; TYPE_1__* conns; } ;
typedef TYPE_2__ serf_context_t ;
struct TYPE_10__ {scalar_t__ dirty_conn; } ;
typedef TYPE_3__ serf_connection_t ;
typedef int apr_status_t ;
struct TYPE_8__ {int nelts; } ;


 int APR_SUCCESS ;
 TYPE_3__* GET_CONN (TYPE_2__*,int) ;
 int serf__conn_update_pollset (TYPE_3__*) ;

__attribute__((used)) static apr_status_t check_dirty_pollsets(serf_context_t *ctx)
{
    int i;


    if (!ctx->dirty_pollset) {
        return APR_SUCCESS;
    }

    for (i = ctx->conns->nelts; i--; ) {
        serf_connection_t *conn = GET_CONN(ctx, i);
        apr_status_t status;


        if (!conn->dirty_conn) {
            continue;
        }


        conn->dirty_conn = 0;

        if ((status = serf__conn_update_pollset(conn)) != APR_SUCCESS)
            return status;
    }


    ctx->dirty_pollset = 0;

    return APR_SUCCESS;
}
