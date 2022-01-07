
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int chain; int key; int cert; } ;
typedef TYPE_1__ SSL_EXCERT ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int X509_free (int ) ;
 int sk_X509_pop_free (int ,int (*) (int )) ;

void ssl_excert_free(SSL_EXCERT *exc)
{
    SSL_EXCERT *curr;

    if (exc == ((void*)0))
        return;
    while (exc) {
        X509_free(exc->cert);
        EVP_PKEY_free(exc->key);
        sk_X509_pop_free(exc->chain, X509_free);
        curr = exc;
        exc = exc->next;
        OPENSSL_free(curr);
    }
}
