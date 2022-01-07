
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int canames; struct TYPE_4__* prefix; struct TYPE_4__** cert_filename; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int OPENSSL_free (TYPE_1__*) ;
 size_t SSL_PKEY_NUM ;
 int X509_NAME_free ;
 int sk_X509_NAME_pop_free (int ,int ) ;

void SSL_CONF_CTX_free(SSL_CONF_CTX *cctx)
{
    if (cctx) {
        size_t i;
        for (i = 0; i < SSL_PKEY_NUM; i++)
            OPENSSL_free(cctx->cert_filename[i]);
        OPENSSL_free(cctx->prefix);
        sk_X509_NAME_pop_free(cctx->canames, X509_NAME_free);
        OPENSSL_free(cctx);
    }
}
