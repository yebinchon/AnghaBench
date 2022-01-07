
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ ssltunnel; TYPE_7__* conn; } ;
typedef TYPE_5__ serf_request_t ;
struct TYPE_21__ {TYPE_3__* scheme; } ;
struct TYPE_23__ {TYPE_4__ proxy_authn_info; scalar_t__ proxy_address; } ;
typedef TYPE_6__ serf_context_t ;
struct TYPE_19__ {int scheme; scalar_t__ hostinfo; } ;
struct TYPE_24__ {TYPE_2__ host_info; scalar_t__ host_url; TYPE_6__* ctx; } ;
typedef TYPE_7__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_25__ {TYPE_1__* scheme; } ;
typedef TYPE_8__ serf__authn_info_t ;
struct TYPE_20__ {int (* setup_request_func ) (int ,int ,TYPE_7__*,TYPE_5__*,char const*,char const*,int *) ;} ;
struct TYPE_18__ {int (* setup_request_func ) (int ,int ,TYPE_7__*,TYPE_5__*,char const*,char const*,int *) ;} ;


 int HOST ;
 int PROXY ;
 TYPE_8__* serf__get_authn_info_for_server (TYPE_7__*) ;
 int serf_bucket_headers_setn (int *,char*,scalar_t__) ;
 int * serf_bucket_request_create (char const*,char const*,int *,int *) ;
 int * serf_bucket_request_get_headers (int *) ;
 int serf_bucket_request_set_root (int *,scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,int ,TYPE_7__*,TYPE_5__*,char const*,char const*,int *) ;
 int stub2 (int ,int ,TYPE_7__*,TYPE_5__*,char const*,char const*,int *) ;
 int stub3 (int ,int ,TYPE_7__*,TYPE_5__*,char const*,char const*,int *) ;

serf_bucket_t *serf_request_bucket_request_create(
    serf_request_t *request,
    const char *method,
    const char *uri,
    serf_bucket_t *body,
    serf_bucket_alloc_t *allocator)
{
    serf_bucket_t *req_bkt, *hdrs_bkt;
    serf_connection_t *conn = request->conn;
    serf_context_t *ctx = conn->ctx;
    int ssltunnel;

    ssltunnel = ctx->proxy_address &&
                (strcmp(conn->host_info.scheme, "https") == 0);

    req_bkt = serf_bucket_request_create(method, uri, body, allocator);
    hdrs_bkt = serf_bucket_request_get_headers(req_bkt);



    if (ctx->proxy_address && conn->host_url &&
        !(ssltunnel && !request->ssltunnel)) {

        serf_bucket_request_set_root(req_bkt, conn->host_url);
    }

    if (conn->host_info.hostinfo)
        serf_bucket_headers_setn(hdrs_bkt, "Host",
                                 conn->host_info.hostinfo);


    if (!request->ssltunnel) {
        serf__authn_info_t *authn_info;
        authn_info = serf__get_authn_info_for_server(conn);
        if (authn_info->scheme)
            authn_info->scheme->setup_request_func(HOST, 0, conn, request,
                                                   method, uri,
                                                   hdrs_bkt);
    }




    if (ctx->proxy_authn_info.scheme) {
        if (strcmp(conn->host_info.scheme, "https") == 0) {
            if (request->ssltunnel)
                ctx->proxy_authn_info.scheme->setup_request_func(PROXY, 0, conn,
                                                                 request,
                                                                 method, uri,
                                                                 hdrs_bkt);
        } else {
            ctx->proxy_authn_info.scheme->setup_request_func(PROXY, 0, conn,
                                                             request,
                                                             method, uri,
                                                             hdrs_bkt);
        }
    }

    return req_bkt;
}
