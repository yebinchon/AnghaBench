#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* auth_baton; } ;
typedef  TYPE_1__ serf_request_t ;
struct TYPE_13__ {TYPE_5__* baton; } ;
struct TYPE_11__ {TYPE_4__ proxy_authn_info; } ;
typedef  TYPE_2__ serf_context_t ;
struct TYPE_12__ {TYPE_2__* ctx; } ;
typedef  TYPE_3__ serf_connection_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf__authn_scheme_t ;
typedef  TYPE_4__ serf__authn_info_t ;
typedef  scalar_t__ peer_t ;
struct TYPE_14__ {int /*<<< orphan*/  qop; int /*<<< orphan*/  cnonce; int /*<<< orphan*/  nonce; int /*<<< orphan*/  ha1; } ;
typedef  TYPE_5__ digest_authn_info_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 scalar_t__ HOST ; 
 int /*<<< orphan*/  SERF_ERROR_AUTHN_FAILED ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (unsigned char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 size_t FUNC11 (char const*) ; 

apr_status_t
FUNC12(const serf__authn_scheme_t *scheme,
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
    const char *rspauth = NULL;
    const char *qop = NULL;
    const char *nc_str = NULL;
    serf_bucket_t *hdrs;
    serf_context_t *ctx = conn->ctx;
    apr_status_t status;

    hdrs = FUNC8(response);

    /* Need a copy cuz we're going to write NUL characters into the string.  */
    if (peer == HOST)
        auth_attr = FUNC2(pool,
            FUNC7(hdrs, "Authentication-Info"));
    else
        auth_attr = FUNC2(pool,
            FUNC7(hdrs, "Proxy-Authentication-Info"));

    /* If there's no Authentication-Info header there's nothing to validate. */
    if (! auth_attr)
        return APR_SUCCESS;

    /* We're expecting a list of key=value pairs, separated by a comma.
       Ex. rspauth="8a4b8451084b082be6b105e2b7975087",
       cnonce="346531653132652d303033392d3435", nc=00000007,
       qop=auth */
    for ( ; (key = FUNC3(auth_attr, ",", &nextkv)) != NULL; auth_attr = NULL) {
        char *val;

        val = FUNC9(key, '=');
        if (val == NULL)
            continue;
        *val++ = '\0';

        /* skip leading spaces */
        while (*key && *key == ' ')
            key++;

        /* If the value is quoted, then remove the quotes.  */
        if (*val == '"') {
            apr_size_t last = FUNC11(val) - 1;

            if (val[last] == '"') {
                val[last] = '\0';
                val++;
            }
        }

        if (FUNC10(key, "rspauth") == 0)
            rspauth = val;
        else if (FUNC10(key, "qop") == 0)
            qop = val;
        else if (FUNC10(key, "nc") == 0)
            nc_str = val;
    }

    if (rspauth) {
        const char *ha2, *tmp, *resp_hdr_hex;
        unsigned char resp_hdr[APR_MD5_DIGESTSIZE];
        const char *req_uri = request->auth_baton;
        serf__authn_info_t *authn_info;
        digest_authn_info_t *digest_info;

        if (peer == HOST) {
            authn_info = FUNC6(conn);
        } else {
            authn_info = &ctx->proxy_authn_info;
        }
        digest_info = authn_info->baton;

        status = FUNC4(&ha2, req_uri, "", qop, pool);
        if (status)
            return status;

        tmp = FUNC1(pool, "%s:%s:%s:%s:%s:%s",
                           digest_info->ha1, digest_info->nonce, nc_str,
                           digest_info->cnonce, digest_info->qop, ha2);
        FUNC0(resp_hdr, tmp, FUNC11(tmp));
        resp_hdr_hex =  FUNC5(resp_hdr, pool);

        /* Incorrect response-digest in Authentication-Info header. */
        if (FUNC10(rspauth, resp_hdr_hex) != 0) {
            return SERF_ERROR_AUTHN_FAILED;
        }
    }

    return APR_SUCCESS;
}