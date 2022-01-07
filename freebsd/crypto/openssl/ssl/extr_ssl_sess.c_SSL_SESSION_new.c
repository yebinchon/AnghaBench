
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int verify_result; int references; int timeout; unsigned long time; int * lock; int ex_data; } ;
typedef TYPE_1__ SSL_SESSION ;


 int CRYPTO_EX_INDEX_SSL_SESSION ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_init_ssl (int ,int *) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int SSL_F_SSL_SESSION_NEW ;
 int SSLerr (int ,int ) ;
 scalar_t__ time (int *) ;

SSL_SESSION *SSL_SESSION_new(void)
{
    SSL_SESSION *ss;

    if (!OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS, ((void*)0)))
        return ((void*)0);

    ss = OPENSSL_zalloc(sizeof(*ss));
    if (ss == ((void*)0)) {
        SSLerr(SSL_F_SSL_SESSION_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ss->verify_result = 1;
    ss->references = 1;
    ss->timeout = 60 * 5 + 4;
    ss->time = (unsigned long)time(((void*)0));
    ss->lock = CRYPTO_THREAD_lock_new();
    if (ss->lock == ((void*)0)) {
        SSLerr(SSL_F_SSL_SESSION_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ss);
        return ((void*)0);
    }

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_SSL_SESSION, ss, &ss->ex_data)) {
        CRYPTO_THREAD_lock_free(ss->lock);
        OPENSSL_free(ss);
        return ((void*)0);
    }
    return ss;
}
