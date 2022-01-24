#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* cert_file_success; char const* cert_path; char* cert_pw_success; scalar_t__ cert_pw_cache_pool; scalar_t__ cert_cache_pool; int /*<<< orphan*/ * cached_cert_pw; int /*<<< orphan*/ * cached_cert; int /*<<< orphan*/  cert_pw_userdata; int /*<<< orphan*/  (* cert_pw_callback ) (int /*<<< orphan*/ ,char const*,char const**) ;int /*<<< orphan*/  pool; int /*<<< orphan*/  cert_userdata; int /*<<< orphan*/  (* cert_callback ) (int /*<<< orphan*/ ,char const**) ;} ;
typedef  TYPE_1__ serf_ssl_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  PKCS12 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO_METHOD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ ERR_LIB_PKCS12 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ PKCS12_R_MAC_VERIFY_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC12 (scalar_t__,char const*) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,char const**) ; 

__attribute__((used)) static int FUNC20(SSL *ssl, X509 **cert, EVP_PKEY **pkey)
{
    serf_ssl_context_t *ctx = FUNC8(ssl);
    apr_status_t status;

    if (ctx->cached_cert) {
        *cert = ctx->cached_cert;
        *pkey = ctx->cached_cert_pw;
        return 1;
    }

    while (ctx->cert_callback) {
        const char *cert_path;
        apr_file_t *cert_file;
        BIO *bio;
        BIO_METHOD *biom;
        PKCS12 *p12;
        int i;
        int retrying_success = 0;

        if (ctx->cert_file_success) {
            status = APR_SUCCESS;
            cert_path = ctx->cert_file_success;
            ctx->cert_file_success = NULL;
            retrying_success = 1;
        } else {
            status = ctx->cert_callback(ctx->cert_userdata, &cert_path);
        }

        if (status || !cert_path) {
            break;
        }

        /* Load the x.509 cert file stored in PKCS12 */
        status = FUNC10(&cert_file, cert_path, APR_READ, APR_OS_DEFAULT,
                               ctx->pool);

        if (status) {
            continue;
        }

        biom = FUNC13();
        bio = FUNC0(biom);
        FUNC15(bio, cert_file);

        ctx->cert_path = cert_path;
        p12 = FUNC16(bio, NULL);
        FUNC9(cert_file);

        i = FUNC7(p12, NULL, pkey, cert, NULL);

        if (i == 1) {
            FUNC6(p12);
            FUNC14(biom);
            ctx->cached_cert = *cert;
            ctx->cached_cert_pw = *pkey;
            if (!retrying_success && ctx->cert_cache_pool) {
                const char *c;

                c = FUNC12(ctx->cert_cache_pool, ctx->cert_path);

                FUNC11(c, "serf:ssl:cert",
                                       apr_pool_cleanup_null,
                                       ctx->cert_cache_pool);
            }
            return 1;
        }
        else {
            int err = FUNC5();
            FUNC4();
            if (FUNC2(err) == ERR_LIB_PKCS12 &&
                FUNC3(err) == PKCS12_R_MAC_VERIFY_FAILURE) {
                if (ctx->cert_pw_callback) {
                    const char *password;

                    if (ctx->cert_pw_success) {
                        status = APR_SUCCESS;
                        password = ctx->cert_pw_success;
                        ctx->cert_pw_success = NULL;
                    } else {
                        status = ctx->cert_pw_callback(ctx->cert_pw_userdata,
                                                       ctx->cert_path,
                                                       &password);
                    }

                    if (!status && password) {
                        i = FUNC7(p12, password, pkey, cert, NULL);
                        if (i == 1) {
                            FUNC6(p12);
                            FUNC14(biom);
                            ctx->cached_cert = *cert;
                            ctx->cached_cert_pw = *pkey;
                            if (!retrying_success && ctx->cert_cache_pool) {
                                const char *c;

                                c = FUNC12(ctx->cert_cache_pool,
                                                ctx->cert_path);

                                FUNC11(c, "serf:ssl:cert",
                                                       apr_pool_cleanup_null,
                                                       ctx->cert_cache_pool);
                            }
                            if (!retrying_success && ctx->cert_pw_cache_pool) {
                                const char *c;

                                c = FUNC12(ctx->cert_pw_cache_pool,
                                                password);

                                FUNC11(c, "serf:ssl:certpw",
                                                       apr_pool_cleanup_null,
                                                       ctx->cert_pw_cache_pool);
                            }
                            return 1;
                        }
                    }
                }
                FUNC6(p12);
                FUNC14(biom);
                return 0;
            }
            else {
                FUNC17("OpenSSL cert error: %d %d %d\n", FUNC2(err),
                       FUNC1(err),
                       FUNC3(err));
                FUNC6(p12);
                FUNC14(biom);
            }
        }
    }

    return 0;
}