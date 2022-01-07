
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int code; int version; } ;
typedef TYPE_1__ serf_status_line ;
struct TYPE_17__ {TYPE_4__* conn; int setup_baton; int setup; scalar_t__ ssltunnel; } ;
typedef TYPE_2__ serf_request_t ;
struct TYPE_21__ {TYPE_5__* scheme; } ;
struct TYPE_18__ {TYPE_8__ proxy_authn_info; } ;
typedef TYPE_3__ serf_context_t ;
struct TYPE_19__ {TYPE_3__* ctx; } ;
typedef TYPE_4__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ (* serf__validate_response_func_t ) (TYPE_5__*,int ,int,TYPE_4__*,TYPE_2__*,int *,int *) ;
typedef TYPE_8__ serf__authn_info_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_20__ {scalar_t__ (* validate_response_func ) (TYPE_5__*,int ,int,TYPE_4__*,TYPE_2__*,int *,int *) ;} ;


 scalar_t__ APR_EOF ;
 scalar_t__ APR_STATUS_IS_EAGAIN (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int HOST ;
 int PROXY ;
 scalar_t__ SERF_BUCKET_READ_ERROR (scalar_t__) ;
 scalar_t__ discard_body (int *) ;
 scalar_t__ dispatch_auth (int,TYPE_2__*,int *,void*,int *) ;
 TYPE_8__* serf__get_authn_info_for_server (TYPE_4__*) ;
 int serf__ssltunnel_request_create (TYPE_4__*,int ,int ) ;
 scalar_t__ serf_bucket_response_status (int *,TYPE_1__*) ;
 scalar_t__ serf_bucket_response_wait_for_headers (int *) ;
 int serf_connection_priority_request_create (TYPE_4__*,int ,int ) ;

apr_status_t serf__handle_auth_response(int *consumed_response,
                                        serf_request_t *request,
                                        serf_bucket_t *response,
                                        void *baton,
                                        apr_pool_t *pool)
{
    apr_status_t status;
    serf_status_line sl;

    *consumed_response = 0;



    status = serf_bucket_response_status(response, &sl);
    if (SERF_BUCKET_READ_ERROR(status)) {
        return status;
    }
    if (!sl.version && (APR_STATUS_IS_EOF(status) ||
                        APR_STATUS_IS_EAGAIN(status))) {
        return status;
    }

    status = serf_bucket_response_wait_for_headers(response);
    if (status) {
        if (!APR_STATUS_IS_EOF(status)) {
            return status;
        }




        return APR_SUCCESS;
    }

    if (sl.code == 401 || sl.code == 407) {





        status = discard_body(response);
        *consumed_response = 1;


        if (!APR_STATUS_IS_EOF(status)) {
            return status;
        }

        status = dispatch_auth(sl.code, request, response, baton, pool);
        if (status != APR_SUCCESS) {
            return status;
        }



        if (request->ssltunnel) {
            serf__ssltunnel_request_create(request->conn,
                                           request->setup,
                                           request->setup_baton);
        } else {
            serf_connection_priority_request_create(request->conn,
                                                    request->setup,
                                                    request->setup_baton);
        }

        return APR_EOF;
    } else {
        serf__validate_response_func_t validate_resp;
        serf_connection_t *conn = request->conn;
        serf_context_t *ctx = conn->ctx;
        serf__authn_info_t *authn_info;
        apr_status_t resp_status = APR_SUCCESS;



        authn_info = serf__get_authn_info_for_server(conn);
        if (authn_info->scheme) {
            validate_resp = authn_info->scheme->validate_response_func;
            resp_status = validate_resp(authn_info->scheme, HOST, sl.code,
                                        conn, request, response, pool);
        }


        authn_info = &ctx->proxy_authn_info;
        if (!resp_status && authn_info->scheme) {
            validate_resp = authn_info->scheme->validate_response_func;
            resp_status = validate_resp(authn_info->scheme, PROXY, sl.code,
                                        conn, request, response, pool);
        }

        if (resp_status) {


            status = discard_body(response);
            *consumed_response = 1;
            if (!APR_STATUS_IS_EOF(status)) {
                return status;
            }

            return resp_status;
        }
    }

    return APR_SUCCESS;
}
