
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int cert; } ;
typedef TYPE_1__ SSL_CTX ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int SSL_F_SSL_CTX_USE_CERTIFICATE ;
 int SSLerr (int ,int) ;
 int ssl_security_cert (int *,TYPE_1__*,int *,int ,int) ;
 int ssl_set_cert (int ,int *) ;

int SSL_CTX_use_certificate(SSL_CTX *ctx, X509 *x)
{
    int rv;
    if (x == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_CERTIFICATE, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    rv = ssl_security_cert(((void*)0), ctx, x, 0, 1);
    if (rv != 1) {
        SSLerr(SSL_F_SSL_CTX_USE_CERTIFICATE, rv);
        return 0;
    }
    return ssl_set_cert(ctx->cert, x);
}
