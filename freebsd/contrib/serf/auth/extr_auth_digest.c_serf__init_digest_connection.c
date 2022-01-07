
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ baton; } ;
struct TYPE_8__ {TYPE_3__ proxy_authn_info; } ;
typedef TYPE_1__ serf_context_t ;
struct TYPE_9__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ serf_connection_t ;
typedef int serf__authn_scheme_t ;
typedef TYPE_3__ serf__authn_info_t ;
typedef int digest_authn_info_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;
 scalar_t__ apr_pcalloc (int *,int) ;
 TYPE_3__* serf__get_authn_info_for_server (TYPE_2__*) ;
 int serf_connection_set_max_outstanding_requests (TYPE_2__*,int) ;

apr_status_t
serf__init_digest_connection(const serf__authn_scheme_t *scheme,
                             int code,
                             serf_connection_t *conn,
                             apr_pool_t *pool)
{
    serf_context_t *ctx = conn->ctx;
    serf__authn_info_t *authn_info;

    if (code == 401) {
        authn_info = serf__get_authn_info_for_server(conn);
    } else {
        authn_info = &ctx->proxy_authn_info;
    }

    if (!authn_info->baton) {
        authn_info->baton = apr_pcalloc(pool, sizeof(digest_authn_info_t));
    }


    serf_connection_set_max_outstanding_requests(conn, 1);

    return APR_SUCCESS;
}
