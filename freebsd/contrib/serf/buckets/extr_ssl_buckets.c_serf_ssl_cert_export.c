
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_cert; } ;
typedef TYPE_1__ serf_ssl_certificate_t ;
typedef int apr_pool_t ;


 int apr_base64_encode (char*,char*,int) ;
 int apr_base64_encode_len (int) ;
 char* apr_palloc (int *,int) ;
 int i2d_X509 (int ,unsigned char**) ;

const char *serf_ssl_cert_export(
    const serf_ssl_certificate_t *cert,
    apr_pool_t *pool)
{
    char *binary_cert;
    char *encoded_cert;
    int len;
    unsigned char *unused;


    len = i2d_X509(cert->ssl_cert, ((void*)0));
    if (len < 0) {
        return ((void*)0);
    }

    binary_cert = apr_palloc(pool, len);
    unused = (unsigned char *)binary_cert;
    len = i2d_X509(cert->ssl_cert, &unused);
    if (len < 0) {
        return ((void*)0);
    }

    encoded_cert = apr_palloc(pool, apr_base64_encode_len(len));
    apr_base64_encode(encoded_cert, binary_cert, len);

    return encoded_cert;
}
