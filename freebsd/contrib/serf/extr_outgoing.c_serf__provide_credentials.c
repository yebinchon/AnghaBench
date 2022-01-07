
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ssltunnel; int handler_baton; int req_bkt; struct TYPE_8__* next; TYPE_3__* conn; } ;
typedef TYPE_1__ serf_request_t ;
struct TYPE_9__ {scalar_t__ (* cred_cb ) (char**,char**,TYPE_1__*,int ,int,char const*,char const*,int *) ;} ;
typedef TYPE_2__ serf_context_t ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_3__ serf_connection_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EGENERAL ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_CONN_SETUP_SSLTUNNEL ;
 scalar_t__ setup_request (TYPE_1__*) ;
 scalar_t__ stub1 (char**,char**,TYPE_1__*,int ,int,char const*,char const*,int *) ;

apr_status_t
serf__provide_credentials(serf_context_t *ctx,
                          char **username,
                          char **password,
                          serf_request_t *request, void *baton,
                          int code, const char *authn_type,
                          const char *realm,
                          apr_pool_t *pool)
{
    serf_connection_t *conn = request->conn;
    serf_request_t *authn_req = request;
    apr_status_t status;

    if (request->ssltunnel == 1 &&
        conn->state == SERF_CONN_SETUP_SSLTUNNEL) {
        authn_req = request->next;

        if (!authn_req)
            return APR_EGENERAL;

        if (!authn_req->req_bkt) {
            apr_status_t status;

            status = setup_request(authn_req);


            if (status)
                return status;
        }
    }


    status = (*ctx->cred_cb)(username, password,
                             authn_req, authn_req->handler_baton,
                             code, authn_type, realm, pool);
    if (status)
        return status;

    return APR_SUCCESS;
}
