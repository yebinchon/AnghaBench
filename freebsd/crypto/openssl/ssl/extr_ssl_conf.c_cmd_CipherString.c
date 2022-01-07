
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CTX_set_cipher_list (scalar_t__,char const*) ;
 int SSL_set_cipher_list (scalar_t__,char const*) ;

__attribute__((used)) static int cmd_CipherString(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 1;

    if (cctx->ctx)
        rv = SSL_CTX_set_cipher_list(cctx->ctx, value);
    if (cctx->ssl)
        rv = SSL_set_cipher_list(cctx->ssl, value);
    return rv > 0;
}
