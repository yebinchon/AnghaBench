
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
typedef TYPE_1__ serf_ssl_context_t ;
struct TYPE_6__ {int ssl_cert; } ;
typedef TYPE_2__ serf_ssl_certificate_t ;
typedef int apr_status_t ;
typedef int X509_STORE ;


 int APR_SUCCESS ;
 int SERF_ERROR_SSL_CERT_FAILED ;
 int * SSL_CTX_get_cert_store (int ) ;
 int X509_STORE_add_cert (int *,int ) ;

apr_status_t serf_ssl_trust_cert(
    serf_ssl_context_t *ssl_ctx,
    serf_ssl_certificate_t *cert)
{
    X509_STORE *store = SSL_CTX_get_cert_store(ssl_ctx->ctx);

    int result = X509_STORE_add_cert(store, cert->ssl_cert);

    return result ? APR_SUCCESS : SERF_ERROR_SSL_CERT_FAILED;
}
