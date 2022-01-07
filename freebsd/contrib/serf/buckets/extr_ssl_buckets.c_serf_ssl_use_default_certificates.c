
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ serf_ssl_context_t ;
typedef int apr_status_t ;
typedef int X509_STORE ;


 int APR_SUCCESS ;
 int SERF_ERROR_SSL_CERT_FAILED ;
 int * SSL_CTX_get_cert_store (int ) ;
 int X509_STORE_set_default_paths (int *) ;

apr_status_t serf_ssl_use_default_certificates(serf_ssl_context_t *ssl_ctx)
{
    X509_STORE *store = SSL_CTX_get_cert_store(ssl_ctx->ctx);

    int result = X509_STORE_set_default_paths(store);

    return result ? APR_SUCCESS : SERF_ERROR_SSL_CERT_FAILED;
}
