
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ssl_cert; } ;
typedef TYPE_1__ serf_ssl_certificate_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int X509 ;
typedef int FILE ;


 int APR_SUCCESS ;
 int * PEM_read_X509 (int *,int *,int *,int *) ;
 int SERF_ERROR_SSL_CERT_FAILED ;
 TYPE_1__* apr_palloc (int *,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

apr_status_t serf_ssl_load_cert_file(
    serf_ssl_certificate_t **cert,
    const char *file_path,
    apr_pool_t *pool)
{
    FILE *fp = fopen(file_path, "r");

    if (fp) {
        X509 *ssl_cert = PEM_read_X509(fp, ((void*)0), ((void*)0), ((void*)0));
        fclose(fp);

        if (ssl_cert) {
            *cert = apr_palloc(pool, sizeof(serf_ssl_certificate_t));
            (*cert)->ssl_cert = ssl_cert;

            return APR_SUCCESS;
        }
    }

    return SERF_ERROR_SSL_CERT_FAILED;
}
