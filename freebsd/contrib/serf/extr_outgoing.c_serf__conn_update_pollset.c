
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pollset_baton; scalar_t__ (* pollset_add ) (int ,TYPE_4__*,int *) ;scalar_t__ (* pollset_rm ) (int ,TYPE_4__*,int *) ;} ;
typedef TYPE_2__ serf_context_t ;
struct TYPE_11__ {int reqevents; scalar_t__ state; int stop_writing; scalar_t__ probable_keepalive_limit; scalar_t__ completed_requests; scalar_t__ max_outstanding_requests; scalar_t__ completed_responses; int baton; scalar_t__ async_responses; scalar_t__ vec_len; scalar_t__ requests; scalar_t__ skt; TYPE_2__* ctx; } ;
typedef TYPE_3__ serf_connection_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_9__ {scalar_t__ s; } ;
struct TYPE_12__ {int reqevents; TYPE_1__ desc; int desc_type; int member_0; } ;
typedef TYPE_4__ apr_pollfd_t ;


 int APR_POLLERR ;
 int APR_POLLHUP ;
 int APR_POLLIN ;
 int APR_POLLOUT ;
 int APR_POLL_SOCKET ;
 int APR_STATUS_IS_NOTFOUND (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_CONN_CLOSING ;
 scalar_t__ SERF_CONN_INIT ;
 scalar_t__ request_or_data_pending (int *,TYPE_3__*) ;
 scalar_t__ stub1 (int ,TYPE_4__*,int *) ;
 scalar_t__ stub2 (int ,TYPE_4__*,int *) ;

apr_status_t serf__conn_update_pollset(serf_connection_t *conn)
{
    serf_context_t *ctx = conn->ctx;
    apr_status_t status;
    apr_pollfd_t desc = { 0 };

    if (!conn->skt) {
        return APR_SUCCESS;
    }


    desc.desc_type = APR_POLL_SOCKET;
    desc.desc.s = conn->skt;
    desc.reqevents = conn->reqevents;

    status = ctx->pollset_rm(ctx->pollset_baton,
                             &desc, &conn->baton);
    if (status && !APR_STATUS_IS_NOTFOUND(status))
        return status;


    desc.reqevents = APR_POLLHUP | APR_POLLERR;
    if (conn->requests &&
        conn->state != SERF_CONN_INIT) {


        desc.reqevents |= APR_POLLIN;


        if (conn->stop_writing != 1) {






            if (conn->vec_len &&
                conn->state != SERF_CONN_CLOSING)
                desc.reqevents |= APR_POLLOUT;
            else {

                if ((conn->probable_keepalive_limit &&
                     conn->completed_requests > conn->probable_keepalive_limit) ||
                    (conn->max_outstanding_requests &&
                     conn->completed_requests - conn->completed_responses >=
                     conn->max_outstanding_requests)) {

                }
                else if (request_or_data_pending(((void*)0), conn)) {
                    desc.reqevents |= APR_POLLOUT;
                }
            }
        }
    }


    if (conn->async_responses) {
        desc.reqevents |= APR_POLLIN;
    }


    conn->reqevents = desc.reqevents;




    return ctx->pollset_add(ctx->pollset_baton,
                            &desc, &conn->baton);
}
