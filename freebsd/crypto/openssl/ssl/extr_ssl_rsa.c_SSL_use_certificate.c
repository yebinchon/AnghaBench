
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int cert; } ;
typedef TYPE_1__ SSL ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int SSL_F_SSL_USE_CERTIFICATE ;
 int SSLerr (int ,int) ;
 int ssl_security_cert (TYPE_1__*,int *,int *,int ,int) ;
 int ssl_set_cert (int ,int *) ;

int SSL_use_certificate(SSL *ssl, X509 *x)
{
    int rv;
    if (x == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_CERTIFICATE, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    rv = ssl_security_cert(ssl, ((void*)0), x, 0, 1);
    if (rv != 1) {
        SSLerr(SSL_F_SSL_USE_CERTIFICATE, rv);
        return 0;
    }

    return ssl_set_cert(ssl->cert, x);
}
