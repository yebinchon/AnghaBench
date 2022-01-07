
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* pending_err; void* (* server_cert_callback ) (int ,int,TYPE_2__*) ;void* (* server_cert_chain_callback ) (int ,int,int,TYPE_2__ const**,int) ;int server_cert_userdata; int pool; } ;
typedef TYPE_1__ serf_ssl_context_t ;
struct TYPE_7__ {int depth; int ssl_cert; } ;
typedef TYPE_2__ serf_ssl_certificate_t ;
typedef void* apr_status_t ;
typedef int apr_pool_t ;
typedef int X509_STORE_CTX ;
typedef int SSL ;


 void* APR_SUCCESS ;
 void* SERF_ERROR_SSL_CERT_FAILED ;
 int SERF_SSL_CERT_EXPIRED ;
 int SERF_SSL_CERT_NOTYETVALID ;
 int SERF_SSL_CERT_REVOKED ;
 int SERF_SSL_CERT_SELF_SIGNED ;
 int SERF_SSL_CERT_UNKNOWNCA ;
 int SERF_SSL_CERT_UNKNOWN_FAILURE ;
 TYPE_1__* SSL_get_app_data (int *) ;
 int SSL_get_ex_data_X509_STORE_CTX_idx () ;
 int STACK_OF (int) ;
 int X509 ;
 int X509_STORE_CTX_get_chain (int *) ;
 int X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int * X509_STORE_CTX_get_ex_data (int *,int ) ;
 scalar_t__ X509_cmp_current_time (int ) ;
 int X509_get_notAfter (int) ;
 int X509_get_notBefore (int) ;
 void* apr_palloc (int *,int) ;
 int apr_pool_create (int **,int ) ;
 int apr_pool_destroy (int *) ;
 int chain ;
 int server_cert ;
 int sk_X509_num (int) ;
 int sk_X509_value (int,int) ;
 void* stub1 (int ,int,TYPE_2__*) ;
 void* stub2 (int ,int,int,TYPE_2__ const**,int) ;
 void* validate_cert_hostname (int,int ) ;

__attribute__((used)) static int
validate_server_certificate(int cert_valid, X509_STORE_CTX *store_ctx)
{
    SSL *ssl;
    serf_ssl_context_t *ctx;
    X509 *server_cert;
    int err, depth;
    int failures = 0;
    apr_status_t status;

    ssl = X509_STORE_CTX_get_ex_data(store_ctx,
                                     SSL_get_ex_data_X509_STORE_CTX_idx());
    ctx = SSL_get_app_data(ssl);

    server_cert = X509_STORE_CTX_get_current_cert(store_ctx);
    depth = X509_STORE_CTX_get_error_depth(store_ctx);



    if (! cert_valid) {
        err = X509_STORE_CTX_get_error(store_ctx);

        switch(err) {
            case 136:
                    failures |= SERF_SSL_CERT_NOTYETVALID;
                    break;
            case 137:
                    failures |= SERF_SSL_CERT_EXPIRED;
                    break;
            case 133:
            case 131:
                    failures |= SERF_SSL_CERT_SELF_SIGNED;
                    break;
            case 129:
            case 130:
            case 134:
            case 132:
            case 128:
                    failures |= SERF_SSL_CERT_UNKNOWNCA;
                    break;
            case 135:
                    failures |= SERF_SSL_CERT_REVOKED;
                    break;
            default:
                    failures |= SERF_SSL_CERT_UNKNOWN_FAILURE;
                    break;
        }
    }


    status = validate_cert_hostname(server_cert, ctx->pool);
    if (status)
        failures |= SERF_SSL_CERT_UNKNOWN_FAILURE;


    if (X509_cmp_current_time(X509_get_notBefore(server_cert)) >= 0) {
        failures |= SERF_SSL_CERT_NOTYETVALID;
    }
    else if (X509_cmp_current_time(X509_get_notAfter(server_cert)) <= 0) {
        failures |= SERF_SSL_CERT_EXPIRED;
    }

    if (ctx->server_cert_callback &&
        (depth == 0 || failures)) {
        serf_ssl_certificate_t *cert;
        apr_pool_t *subpool;

        apr_pool_create(&subpool, ctx->pool);

        cert = apr_palloc(subpool, sizeof(serf_ssl_certificate_t));
        cert->ssl_cert = server_cert;
        cert->depth = depth;


        status = ctx->server_cert_callback(ctx->server_cert_userdata,
                                           failures, cert);
        if (status == APR_SUCCESS)
            cert_valid = 1;
        else {


            cert_valid = 0;

            ctx->pending_err = status;
        }
        apr_pool_destroy(subpool);
    }

    if (ctx->server_cert_chain_callback
        && (depth == 0 || failures)) {
        STACK_OF(X509) *chain;
        const serf_ssl_certificate_t **certs;
        int certs_len;
        apr_pool_t *subpool;

        apr_pool_create(&subpool, ctx->pool);


        chain = X509_STORE_CTX_get_chain(store_ctx);




        if (!chain) {
            serf_ssl_certificate_t *cert = apr_palloc(subpool, sizeof(*cert));

            cert->ssl_cert = server_cert;
            cert->depth = depth;


            certs = apr_palloc(subpool, sizeof(*certs) * 2);
            certs[0] = cert;

            certs_len = 1;
        } else {
            int i;

            certs_len = sk_X509_num(chain);


            certs = apr_palloc(subpool, sizeof(*certs) * (certs_len + 1));
            for (i = 0; i < certs_len; ++i) {
                serf_ssl_certificate_t *cert;

                cert = apr_palloc(subpool, sizeof(*cert));
                cert->ssl_cert = sk_X509_value(chain, i);
                cert->depth = i;

                certs[i] = cert;
            }
        }
        certs[certs_len] = ((void*)0);


        status = ctx->server_cert_chain_callback(ctx->server_cert_userdata,
                                                 failures, depth,
                                                 certs, certs_len);
        if (status == APR_SUCCESS) {
            cert_valid = 1;
        } else {


            cert_valid = 0;

            ctx->pending_err = status;
        }

        apr_pool_destroy(subpool);
    }



    if (!cert_valid &&
        !ctx->server_cert_chain_callback &&
        !ctx->server_cert_callback)
    {
        ctx->pending_err = SERF_ERROR_SSL_CERT_FAILED;
    }

    return cert_valid;
}
