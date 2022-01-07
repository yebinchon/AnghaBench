
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cert_file_success; char const* cert_path; char* cert_pw_success; scalar_t__ cert_pw_cache_pool; scalar_t__ cert_cache_pool; int * cached_cert_pw; int * cached_cert; int cert_pw_userdata; int (* cert_pw_callback ) (int ,char const*,char const**) ;int pool; int cert_userdata; int (* cert_callback ) (int ,char const**) ;} ;
typedef TYPE_1__ serf_ssl_context_t ;
typedef int apr_status_t ;
typedef int apr_file_t ;
typedef int X509 ;
typedef int SSL ;
typedef int PKCS12 ;
typedef int EVP_PKEY ;
typedef int BIO_METHOD ;
typedef int BIO ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_SUCCESS ;
 int * BIO_new (int *) ;
 int ERR_GET_FUNC (int) ;
 int ERR_GET_LIB (int) ;
 int ERR_GET_REASON (int) ;
 scalar_t__ ERR_LIB_PKCS12 ;
 int ERR_clear_error () ;
 int ERR_get_error () ;
 scalar_t__ PKCS12_R_MAC_VERIFY_FAILURE ;
 int PKCS12_free (int *) ;
 int PKCS12_parse (int *,char const*,int **,int **,int *) ;
 TYPE_1__* SSL_get_app_data (int *) ;
 int apr_file_close (int *) ;
 int apr_file_open (int **,char const*,int ,int ,int ) ;
 int apr_pool_cleanup_null ;
 int apr_pool_userdata_setn (char const*,char*,int ,scalar_t__) ;
 char* apr_pstrdup (scalar_t__,char const*) ;
 int * bio_meth_file_new () ;
 int bio_meth_free (int *) ;
 int bio_set_data (int *,int *) ;
 int * d2i_PKCS12_bio (int *,int *) ;
 int printf (char*,int,int,int) ;
 int stub1 (int ,char const**) ;
 int stub2 (int ,char const*,char const**) ;

__attribute__((used)) static int ssl_need_client_cert(SSL *ssl, X509 **cert, EVP_PKEY **pkey)
{
    serf_ssl_context_t *ctx = SSL_get_app_data(ssl);
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
            ctx->cert_file_success = ((void*)0);
            retrying_success = 1;
        } else {
            status = ctx->cert_callback(ctx->cert_userdata, &cert_path);
        }

        if (status || !cert_path) {
            break;
        }


        status = apr_file_open(&cert_file, cert_path, APR_READ, APR_OS_DEFAULT,
                               ctx->pool);

        if (status) {
            continue;
        }

        biom = bio_meth_file_new();
        bio = BIO_new(biom);
        bio_set_data(bio, cert_file);

        ctx->cert_path = cert_path;
        p12 = d2i_PKCS12_bio(bio, ((void*)0));
        apr_file_close(cert_file);

        i = PKCS12_parse(p12, ((void*)0), pkey, cert, ((void*)0));

        if (i == 1) {
            PKCS12_free(p12);
            bio_meth_free(biom);
            ctx->cached_cert = *cert;
            ctx->cached_cert_pw = *pkey;
            if (!retrying_success && ctx->cert_cache_pool) {
                const char *c;

                c = apr_pstrdup(ctx->cert_cache_pool, ctx->cert_path);

                apr_pool_userdata_setn(c, "serf:ssl:cert",
                                       apr_pool_cleanup_null,
                                       ctx->cert_cache_pool);
            }
            return 1;
        }
        else {
            int err = ERR_get_error();
            ERR_clear_error();
            if (ERR_GET_LIB(err) == ERR_LIB_PKCS12 &&
                ERR_GET_REASON(err) == PKCS12_R_MAC_VERIFY_FAILURE) {
                if (ctx->cert_pw_callback) {
                    const char *password;

                    if (ctx->cert_pw_success) {
                        status = APR_SUCCESS;
                        password = ctx->cert_pw_success;
                        ctx->cert_pw_success = ((void*)0);
                    } else {
                        status = ctx->cert_pw_callback(ctx->cert_pw_userdata,
                                                       ctx->cert_path,
                                                       &password);
                    }

                    if (!status && password) {
                        i = PKCS12_parse(p12, password, pkey, cert, ((void*)0));
                        if (i == 1) {
                            PKCS12_free(p12);
                            bio_meth_free(biom);
                            ctx->cached_cert = *cert;
                            ctx->cached_cert_pw = *pkey;
                            if (!retrying_success && ctx->cert_cache_pool) {
                                const char *c;

                                c = apr_pstrdup(ctx->cert_cache_pool,
                                                ctx->cert_path);

                                apr_pool_userdata_setn(c, "serf:ssl:cert",
                                                       apr_pool_cleanup_null,
                                                       ctx->cert_cache_pool);
                            }
                            if (!retrying_success && ctx->cert_pw_cache_pool) {
                                const char *c;

                                c = apr_pstrdup(ctx->cert_pw_cache_pool,
                                                password);

                                apr_pool_userdata_setn(c, "serf:ssl:certpw",
                                                       apr_pool_cleanup_null,
                                                       ctx->cert_pw_cache_pool);
                            }
                            return 1;
                        }
                    }
                }
                PKCS12_free(p12);
                bio_meth_free(biom);
                return 0;
            }
            else {
                printf("OpenSSL cert error: %d %d %d\n", ERR_GET_LIB(err),
                       ERR_GET_FUNC(err),
                       ERR_GET_REASON(err));
                PKCS12_free(p12);
                bio_meth_free(biom);
            }
        }
    }

    return 0;
}
