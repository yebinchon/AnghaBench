
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; scalar_t__ ssl; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CTX_set1_client_sigalgs_list (int ,char const*) ;
 int SSL_set1_client_sigalgs_list (scalar_t__,char const*) ;

__attribute__((used)) static int cmd_ClientSignatureAlgorithms(SSL_CONF_CTX *cctx, const char *value)
{
    int rv;
    if (cctx->ssl)
        rv = SSL_set1_client_sigalgs_list(cctx->ssl, value);

    else
        rv = SSL_CTX_set1_client_sigalgs_list(cctx->ctx, value);
    return rv > 0;
}
