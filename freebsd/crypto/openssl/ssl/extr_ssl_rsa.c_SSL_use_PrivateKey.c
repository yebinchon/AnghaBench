
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert; } ;
typedef TYPE_1__ SSL ;
typedef int EVP_PKEY ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int SSL_F_SSL_USE_PRIVATEKEY ;
 int SSLerr (int ,int ) ;
 int ssl_set_pkey (int ,int *) ;

int SSL_use_PrivateKey(SSL *ssl, EVP_PKEY *pkey)
{
    int ret;

    if (pkey == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_PRIVATEKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ret = ssl_set_pkey(ssl->cert, pkey);
    return ret;
}
