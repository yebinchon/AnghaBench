
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int generate_session_id; } ;
typedef TYPE_1__ SSL ;
typedef int GEN_SESSION_CB ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;

int SSL_set_generate_session_id(SSL *ssl, GEN_SESSION_CB cb)
{
    CRYPTO_THREAD_write_lock(ssl->lock);
    ssl->generate_session_id = cb;
    CRYPTO_THREAD_unlock(ssl->lock);
    return 1;
}
