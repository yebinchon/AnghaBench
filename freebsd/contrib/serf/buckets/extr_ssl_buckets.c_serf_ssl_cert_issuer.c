
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_cert; } ;
typedef TYPE_1__ serf_ssl_certificate_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int X509_NAME ;


 int * X509_get_issuer_name (int ) ;
 int * convert_X509_NAME_to_table (int *,int *) ;

apr_hash_t *serf_ssl_cert_issuer(
    const serf_ssl_certificate_t *cert,
    apr_pool_t *pool)
{
    X509_NAME *issuer = X509_get_issuer_name(cert->ssl_cert);

    if (!issuer)
        return ((void*)0);

    return convert_X509_NAME_to_table(issuer, pool);
}
