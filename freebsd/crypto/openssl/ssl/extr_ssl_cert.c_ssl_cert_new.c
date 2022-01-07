
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int references; int * lock; int * sec_ex; int sec_level; int sec_cb; int * pkeys; int * key; } ;
typedef TYPE_1__ CERT ;


 int * CRYPTO_THREAD_lock_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_TLS_SECURITY_LEVEL ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int SSL_F_SSL_CERT_NEW ;
 size_t SSL_PKEY_RSA ;
 int SSLerr (int ,int ) ;
 int ssl_security_default_callback ;

CERT *ssl_cert_new(void)
{
    CERT *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        SSLerr(SSL_F_SSL_CERT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->key = &(ret->pkeys[SSL_PKEY_RSA]);
    ret->references = 1;
    ret->sec_cb = ssl_security_default_callback;
    ret->sec_level = OPENSSL_TLS_SECURITY_LEVEL;
    ret->sec_ex = ((void*)0);
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        SSLerr(SSL_F_SSL_CERT_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    return ret;
}
