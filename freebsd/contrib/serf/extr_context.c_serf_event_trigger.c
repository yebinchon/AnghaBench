
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int serf_listener_t ;
struct TYPE_13__ {int * client; int * listener; TYPE_5__* conn; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ serf_io_baton_t ;
typedef int serf_incoming_t ;
struct TYPE_15__ {int pollset_baton; int (* pollset_rm ) (int ,TYPE_6__*,int *) ;} ;
typedef TYPE_4__ serf_context_t ;
struct TYPE_16__ {scalar_t__ status; int seen_in_pollset; int baton; int reqevents; scalar_t__ skt; TYPE_4__* ctx; } ;
typedef TYPE_5__ serf_connection_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_12__ {scalar_t__ s; } ;
struct TYPE_17__ {int rtnevents; int reqevents; TYPE_1__ desc; void* desc_type; int member_0; } ;
typedef TYPE_6__ apr_pollfd_t ;


 int APR_POLLHUP ;
 void* APR_POLL_SOCKET ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_IO_CLIENT ;
 scalar_t__ SERF_IO_CONN ;
 scalar_t__ SERF_IO_LISTENER ;
 scalar_t__ serf__process_client (int *,int) ;
 scalar_t__ serf__process_connection (TYPE_5__*,int) ;
 scalar_t__ serf__process_listener (int *) ;
 int stub1 (int ,TYPE_6__*,int *) ;
 int stub2 (int ,TYPE_6__*,int *) ;

apr_status_t serf_event_trigger(
    serf_context_t *s,
    void *serf_baton,
    const apr_pollfd_t *desc)
{
    apr_pollfd_t tdesc = { 0 };
    apr_status_t status = APR_SUCCESS;
    serf_io_baton_t *io = serf_baton;

    if (io->type == SERF_IO_CONN) {
        serf_connection_t *conn = io->u.conn;
        serf_context_t *ctx = conn->ctx;




        if (conn->status) {
            tdesc.desc_type = APR_POLL_SOCKET;
            tdesc.desc.s = conn->skt;
            tdesc.reqevents = conn->reqevents;
            ctx->pollset_rm(ctx->pollset_baton,
                            &tdesc, &conn->baton);
            return conn->status;
        }

        if ((conn->seen_in_pollset & desc->rtnevents) != 0 ||
            (conn->seen_in_pollset & APR_POLLHUP) != 0) {
            return APR_SUCCESS;
        }

        conn->seen_in_pollset |= desc->rtnevents;

        if ((conn->status = serf__process_connection(conn,
                                         desc->rtnevents)) != APR_SUCCESS) {



            if (conn->skt) {
                tdesc.desc_type = APR_POLL_SOCKET;
                tdesc.desc.s = conn->skt;
                tdesc.reqevents = conn->reqevents;
                ctx->pollset_rm(ctx->pollset_baton,
                                &tdesc, &conn->baton);
            }
            return conn->status;
        }
    }
    else if (io->type == SERF_IO_LISTENER) {
        serf_listener_t *l = io->u.listener;

        status = serf__process_listener(l);

        if (status) {
            return status;
        }
    }
    else if (io->type == SERF_IO_CLIENT) {
        serf_incoming_t *c = io->u.client;

        status = serf__process_client(c, desc->rtnevents);

        if (status) {
            return status;
        }
    }
    return status;
}
