
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* auth_baton; } ;
typedef TYPE_1__ serf_request_t ;
struct TYPE_13__ {TYPE_5__* baton; } ;
struct TYPE_11__ {TYPE_4__ proxy_authn_info; } ;
typedef TYPE_2__ serf_context_t ;
struct TYPE_12__ {TYPE_2__* ctx; } ;
typedef TYPE_3__ serf_connection_t ;
typedef int serf_bucket_t ;
typedef int serf__authn_scheme_t ;
typedef TYPE_4__ serf__authn_info_t ;
typedef scalar_t__ peer_t ;
struct TYPE_14__ {int qop; int cnonce; int nonce; int ha1; } ;
typedef TYPE_5__ digest_authn_info_t ;
typedef int apr_status_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 int APR_SUCCESS ;
 scalar_t__ HOST ;
 int SERF_ERROR_AUTHN_FAILED ;
 int apr_md5 (unsigned char*,char const*,size_t) ;
 char* apr_psprintf (int *,char*,int ,int ,char const*,int ,int ,char const*) ;
 char* apr_pstrdup (int *,int ) ;
 char* apr_strtok (char*,char*,char**) ;
 int build_digest_ha2 (char const**,char const*,char*,char const*,int *) ;
 char* hex_encode (unsigned char*,int *) ;
 TYPE_4__* serf__get_authn_info_for_server (TYPE_3__*) ;
 int serf_bucket_headers_get (int *,char*) ;
 int * serf_bucket_response_get_headers (int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

apr_status_t
serf__validate_response_digest_auth(const serf__authn_scheme_t *scheme,
                                    peer_t peer,
                                    int code,
                                    serf_connection_t *conn,
                                    serf_request_t *request,
                                    serf_bucket_t *response,
                                    apr_pool_t *pool)
{
    const char *key;
    char *auth_attr;
    char *nextkv;
    const char *rspauth = ((void*)0);
    const char *qop = ((void*)0);
    const char *nc_str = ((void*)0);
    serf_bucket_t *hdrs;
    serf_context_t *ctx = conn->ctx;
    apr_status_t status;

    hdrs = serf_bucket_response_get_headers(response);


    if (peer == HOST)
        auth_attr = apr_pstrdup(pool,
            serf_bucket_headers_get(hdrs, "Authentication-Info"));
    else
        auth_attr = apr_pstrdup(pool,
            serf_bucket_headers_get(hdrs, "Proxy-Authentication-Info"));


    if (! auth_attr)
        return APR_SUCCESS;





    for ( ; (key = apr_strtok(auth_attr, ",", &nextkv)) != ((void*)0); auth_attr = ((void*)0)) {
        char *val;

        val = strchr(key, '=');
        if (val == ((void*)0))
            continue;
        *val++ = '\0';


        while (*key && *key == ' ')
            key++;


        if (*val == '"') {
            apr_size_t last = strlen(val) - 1;

            if (val[last] == '"') {
                val[last] = '\0';
                val++;
            }
        }

        if (strcmp(key, "rspauth") == 0)
            rspauth = val;
        else if (strcmp(key, "qop") == 0)
            qop = val;
        else if (strcmp(key, "nc") == 0)
            nc_str = val;
    }

    if (rspauth) {
        const char *ha2, *tmp, *resp_hdr_hex;
        unsigned char resp_hdr[APR_MD5_DIGESTSIZE];
        const char *req_uri = request->auth_baton;
        serf__authn_info_t *authn_info;
        digest_authn_info_t *digest_info;

        if (peer == HOST) {
            authn_info = serf__get_authn_info_for_server(conn);
        } else {
            authn_info = &ctx->proxy_authn_info;
        }
        digest_info = authn_info->baton;

        status = build_digest_ha2(&ha2, req_uri, "", qop, pool);
        if (status)
            return status;

        tmp = apr_psprintf(pool, "%s:%s:%s:%s:%s:%s",
                           digest_info->ha1, digest_info->nonce, nc_str,
                           digest_info->cnonce, digest_info->qop, ha2);
        apr_md5(resp_hdr, tmp, strlen(tmp));
        resp_hdr_hex = hex_encode(resp_hdr, pool);


        if (strcmp(rspauth, resp_hdr_hex) != 0) {
            return SERF_ERROR_AUTHN_FAILED;
        }
    }

    return APR_SUCCESS;
}
