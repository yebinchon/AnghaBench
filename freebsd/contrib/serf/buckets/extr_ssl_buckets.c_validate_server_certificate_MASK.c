#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* pending_err; void* (* server_cert_callback ) (int /*<<< orphan*/ ,int,TYPE_2__*) ;void* (* server_cert_chain_callback ) (int /*<<< orphan*/ ,int,int,TYPE_2__ const**,int) ;int /*<<< orphan*/  server_cert_userdata; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ serf_ssl_context_t ;
struct TYPE_7__ {int depth; int /*<<< orphan*/  ssl_cert; } ;
typedef  TYPE_2__ serf_ssl_certificate_t ;
typedef  void* apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 void* APR_SUCCESS ; 
 void* SERF_ERROR_SSL_CERT_FAILED ; 
 int SERF_SSL_CERT_EXPIRED ; 
 int SERF_SSL_CERT_NOTYETVALID ; 
 int SERF_SSL_CERT_REVOKED ; 
 int SERF_SSL_CERT_SELF_SIGNED ; 
 int SERF_SSL_CERT_UNKNOWNCA ; 
 int SERF_SSL_CERT_UNKNOWN_FAILURE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 int X509 ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  X509_V_ERR_CERT_HAS_EXPIRED 137 
#define  X509_V_ERR_CERT_NOT_YET_VALID 136 
#define  X509_V_ERR_CERT_REVOKED 135 
#define  X509_V_ERR_CERT_UNTRUSTED 134 
#define  X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT 133 
#define  X509_V_ERR_INVALID_CA 132 
#define  X509_V_ERR_SELF_SIGNED_CERT_IN_CHAIN 131 
#define  X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT 130 
#define  X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT_LOCALLY 129 
#define  X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE 128 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int chain ; 
 int server_cert ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 void* FUNC16 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 void* FUNC17 (int /*<<< orphan*/ ,int,int,TYPE_2__ const**,int) ; 
 void* FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(int cert_valid, X509_STORE_CTX *store_ctx)
{
    SSL *ssl;
    serf_ssl_context_t *ctx;
    X509 *server_cert;
    int err, depth;
    int failures = 0;
    apr_status_t status;

    ssl = FUNC7(store_ctx,
                                     FUNC1());
    ctx = FUNC0(ssl);

    server_cert = FUNC4(store_ctx);
    depth = FUNC6(store_ctx);

    /* If the certification was found invalid, get the error and convert it to
       something our caller will understand. */
    if (! cert_valid) {
        err = FUNC5(store_ctx);

        switch(err) {
            case X509_V_ERR_CERT_NOT_YET_VALID: 
                    failures |= SERF_SSL_CERT_NOTYETVALID;
                    break;
            case X509_V_ERR_CERT_HAS_EXPIRED:
                    failures |= SERF_SSL_CERT_EXPIRED;
                    break;
            case X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT:
            case X509_V_ERR_SELF_SIGNED_CERT_IN_CHAIN:
                    failures |= SERF_SSL_CERT_SELF_SIGNED;
                    break;
            case X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT_LOCALLY:
            case X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT:
            case X509_V_ERR_CERT_UNTRUSTED:
            case X509_V_ERR_INVALID_CA:
            case X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE:
                    failures |= SERF_SSL_CERT_UNKNOWNCA;
                    break;
            case X509_V_ERR_CERT_REVOKED:
                    failures |= SERF_SSL_CERT_REVOKED;
                    break;
            default:
                    failures |= SERF_SSL_CERT_UNKNOWN_FAILURE;
                    break;
        }
    }

    /* Validate hostname */
    status = FUNC18(server_cert, ctx->pool);
    if (status)
        failures |= SERF_SSL_CERT_UNKNOWN_FAILURE;

    /* Check certificate expiry dates. */
    if (FUNC8(FUNC10(server_cert)) >= 0) {
        failures |= SERF_SSL_CERT_NOTYETVALID;
    }
    else if (FUNC8(FUNC9(server_cert)) <= 0) {
        failures |= SERF_SSL_CERT_EXPIRED;
    }

    if (ctx->server_cert_callback &&
        (depth == 0 || failures)) {
        serf_ssl_certificate_t *cert;
        apr_pool_t *subpool;

        FUNC12(&subpool, ctx->pool);

        cert = FUNC11(subpool, sizeof(serf_ssl_certificate_t));
        cert->ssl_cert = server_cert;
        cert->depth = depth;

        /* Callback for further verification. */
        status = ctx->server_cert_callback(ctx->server_cert_userdata,
                                           failures, cert);
        if (status == APR_SUCCESS)
            cert_valid = 1;
        else {
            /* Even if openssl found the certificate valid, the application
               told us to reject it. */
            cert_valid = 0;
            /* Pass the error back to the caller through the context-run. */
            ctx->pending_err = status;
        }
        FUNC13(subpool);
    }

    if (ctx->server_cert_chain_callback
        && (depth == 0 || failures)) {
        FUNC2(X509) *chain;
        const serf_ssl_certificate_t **certs;
        int certs_len;
        apr_pool_t *subpool;

        FUNC12(&subpool, ctx->pool);

        /* Borrow the chain to pass to the callback. */
        chain = FUNC3(store_ctx);

        /* If the chain can't be retrieved, just pass the current
           certificate. */
        /* ### can this actually happen with _get_chain() ?  */
        if (!chain) {
            serf_ssl_certificate_t *cert = FUNC11(subpool, sizeof(*cert));

            cert->ssl_cert = server_cert;
            cert->depth = depth;

            /* Room for the server_cert and a trailing NULL.  */
            certs = FUNC11(subpool, sizeof(*certs) * 2);
            certs[0] = cert;

            certs_len = 1;
        } else {
            int i;

            certs_len = FUNC14(chain);

            /* Room for all the certs and a trailing NULL.  */
            certs = FUNC11(subpool, sizeof(*certs) * (certs_len + 1));
            for (i = 0; i < certs_len; ++i) {
                serf_ssl_certificate_t *cert;

                cert = FUNC11(subpool, sizeof(*cert));
                cert->ssl_cert = FUNC15(chain, i);
                cert->depth = i;

                certs[i] = cert;
            }
        }
        certs[certs_len] = NULL;

        /* Callback for further verification. */
        status = ctx->server_cert_chain_callback(ctx->server_cert_userdata,
                                                 failures, depth,
                                                 certs, certs_len);
        if (status == APR_SUCCESS) {
            cert_valid = 1;
        } else {
            /* Even if openssl found the certificate valid, the application
               told us to reject it. */
            cert_valid = 0;
            /* Pass the error back to the caller through the context-run. */
            ctx->pending_err = status;
        }

        FUNC13(subpool);
    }

    /* Return a specific error if the server certificate is not accepted by
       OpenSSL and the application has not set callbacks to override this. */
    if (!cert_valid &&
        !ctx->server_cert_chain_callback &&
        !ctx->server_cert_callback)
    {
        ctx->pending_err = SERF_ERROR_SSL_CERT_FAILED;
    }
        
    return cert_valid;
}