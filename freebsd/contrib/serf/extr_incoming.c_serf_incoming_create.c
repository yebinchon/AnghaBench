
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* client; } ;
struct TYPE_15__ {TYPE_1__ u; int type; } ;
struct TYPE_11__ {int * s; } ;
struct TYPE_14__ {int reqevents; TYPE_2__ desc; int desc_type; } ;
struct TYPE_12__ {TYPE_6__ baton; TYPE_5__ desc; int * skt; int request; void* request_baton; TYPE_4__* ctx; } ;
typedef TYPE_3__ serf_incoming_t ;
typedef int serf_incoming_request_cb_t ;
struct TYPE_13__ {int pollset_baton; int (* pollset_add ) (int ,TYPE_5__*,TYPE_6__*) ;} ;
typedef TYPE_4__ serf_context_t ;
typedef int apr_status_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;


 int APR_POLLIN ;
 int APR_POLL_SOCKET ;
 int SERF_IO_CLIENT ;
 TYPE_3__* apr_palloc (int *,int) ;
 int stub1 (int ,TYPE_5__*,TYPE_6__*) ;

apr_status_t serf_incoming_create(
    serf_incoming_t **client,
    serf_context_t *ctx,
    apr_socket_t *insock,
    void *request_baton,
    serf_incoming_request_cb_t request,
    apr_pool_t *pool)
{
    apr_status_t rv;
    serf_incoming_t *ic = apr_palloc(pool, sizeof(*ic));

    ic->ctx = ctx;
    ic->baton.type = SERF_IO_CLIENT;
    ic->baton.u.client = ic;
    ic->request_baton = request_baton;
    ic->request = request;
    ic->skt = insock;
    ic->desc.desc_type = APR_POLL_SOCKET;
    ic->desc.desc.s = ic->skt;
    ic->desc.reqevents = APR_POLLIN;

    rv = ctx->pollset_add(ctx->pollset_baton,
                         &ic->desc, &ic->baton);
    *client = ic;

    return rv;
}
