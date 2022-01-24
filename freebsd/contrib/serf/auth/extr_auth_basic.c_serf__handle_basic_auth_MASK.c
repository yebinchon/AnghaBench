#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* conn; } ;
typedef  TYPE_2__ serf_request_t ;
struct TYPE_17__ {TYPE_1__* scheme; TYPE_6__* baton; } ;
struct TYPE_15__ {TYPE_5__ proxy_authn_info; int /*<<< orphan*/  cred_cb; } ;
typedef  TYPE_3__ serf_context_t ;
struct TYPE_16__ {int /*<<< orphan*/  pool; TYPE_3__* ctx; } ;
typedef  TYPE_4__ serf_connection_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  TYPE_5__ serf__authn_info_t ;
struct TYPE_18__ {char* header; int /*<<< orphan*/  value; } ;
typedef  TYPE_6__ basic_authn_info_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PROXY ; 
 scalar_t__ SERF_ERROR_AUTHN_FAILED ; 
 scalar_t__ SERF_ERROR_AUTHN_MISSING_ATTRIBUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char**,char**,TYPE_2__*,void*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 

apr_status_t
FUNC11(int code,
                        serf_request_t *request,
                        serf_bucket_t *response,
                        const char *auth_hdr,
                        const char *auth_attr,
                        void *baton,
                        apr_pool_t *pool)
{
    const char *tmp;
    apr_size_t tmp_len;
    serf_connection_t *conn = request->conn;
    serf_context_t *ctx = conn->ctx;
    serf__authn_info_t *authn_info;
    basic_authn_info_t *basic_info;
    apr_status_t status;
    apr_pool_t *cred_pool;
    char *username, *password, *realm_name;
    const char *eq, *realm = NULL;

    /* Can't do Basic authentication if there's no callback to get
       username & password. */
    if (!ctx->cred_cb) {
        return SERF_ERROR_AUTHN_FAILED;
    }

    if (code == 401) {
        authn_info = FUNC6(conn);
    } else {
        authn_info = &ctx->proxy_authn_info;
    }
    basic_info = authn_info->baton;

    realm_name = NULL;
    eq = FUNC8(auth_attr, '=');

    if (eq && FUNC10(auth_attr, "realm", 5) == 0) {
        realm_name = FUNC3(pool, eq + 1);
        if (realm_name[0] == '\"') {
            apr_size_t realm_len;

            realm_len = FUNC9(realm_name);
            if (realm_name[realm_len - 1] == '\"') {
                realm_name[realm_len - 1] = '\0';
                realm_name++;
            }
        }

        if (!realm_name) {
            return SERF_ERROR_AUTHN_MISSING_ATTRIBUTE;
        }

        realm = FUNC4(code == 401 ? HOST : PROXY,
                                      conn, realm_name,
                                      pool);
    }

    /* Ask the application for credentials */
    FUNC0(&cred_pool, pool);
    status = FUNC7(ctx,
                                       &username, &password,
                                       request, baton,
                                       code, authn_info->scheme->name,
                                       realm, cred_pool);
    if (status) {
        FUNC1(cred_pool);
        return status;
    }

    tmp = FUNC2(conn->pool, username, ":", password, NULL);
    tmp_len = FUNC9(tmp);
    FUNC1(cred_pool);

    FUNC5(&basic_info->value,
                             authn_info->scheme->name,
                             tmp, tmp_len, pool);
    basic_info->header = (code == 401) ? "Authorization" : "Proxy-Authorization";

    return APR_SUCCESS;
}