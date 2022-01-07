
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pollset_baton; int (* pollset_rm ) (int ,TYPE_4__*,int *) ;} ;
typedef TYPE_2__ serf_context_t ;
struct TYPE_10__ {int baton; int reqevents; int skt; } ;
typedef TYPE_3__ serf_connection_t ;
typedef int apr_status_t ;
struct TYPE_8__ {int s; } ;
struct TYPE_11__ {int reqevents; TYPE_1__ desc; int desc_type; int member_0; } ;
typedef TYPE_4__ apr_pollfd_t ;


 int APR_POLL_SOCKET ;
 int stub1 (int ,TYPE_4__*,int *) ;

__attribute__((used)) static apr_status_t remove_connection(serf_context_t *ctx,
                                      serf_connection_t *conn)
{
    apr_pollfd_t desc = { 0 };

    desc.desc_type = APR_POLL_SOCKET;
    desc.desc.s = conn->skt;
    desc.reqevents = conn->reqevents;

    return ctx->pollset_rm(ctx->pollset_baton,
                           &desc, &conn->baton);
}
