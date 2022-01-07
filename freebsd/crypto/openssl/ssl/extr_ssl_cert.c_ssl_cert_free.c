
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; struct TYPE_6__* psk_identity_hint; int custext; int chain_store; int verify_store; struct TYPE_6__* ctype; struct TYPE_6__* client_sigalgs; struct TYPE_6__* conf_sigalgs; int dh_tmp; int references; } ;
typedef TYPE_1__ CERT ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_1__*) ;
 int X509_STORE_free (int ) ;
 int custom_exts_free (int *) ;
 int ssl_cert_clear_certs (TYPE_1__*) ;

void ssl_cert_free(CERT *c)
{
    int i;

    if (c == ((void*)0))
        return;
    CRYPTO_DOWN_REF(&c->references, &i, c->lock);
    REF_PRINT_COUNT("CERT", c);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);


    EVP_PKEY_free(c->dh_tmp);


    ssl_cert_clear_certs(c);
    OPENSSL_free(c->conf_sigalgs);
    OPENSSL_free(c->client_sigalgs);
    OPENSSL_free(c->ctype);
    X509_STORE_free(c->verify_store);
    X509_STORE_free(c->chain_store);
    custom_exts_free(&c->custext);

    OPENSSL_free(c->psk_identity_hint);

    CRYPTO_THREAD_lock_free(c->lock);
    OPENSSL_free(c);
}
