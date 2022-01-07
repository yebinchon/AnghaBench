
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int chain; TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_7__ {scalar_t__ auth_level; } ;


 int X509_V_ERR_CA_KEY_TOO_SMALL ;
 int X509_V_ERR_CA_MD_TOO_WEAK ;
 int check_key_level (TYPE_2__*,int *) ;
 int check_sig_level (TYPE_2__*,int *) ;
 int sk_X509_num (int ) ;
 int * sk_X509_value (int ,int) ;
 scalar_t__ verify_cb_cert (TYPE_2__*,int *,int,int ) ;

__attribute__((used)) static int check_auth_level(X509_STORE_CTX *ctx)
{
    int i;
    int num = sk_X509_num(ctx->chain);

    if (ctx->param->auth_level <= 0)
        return 1;

    for (i = 0; i < num; ++i) {
        X509 *cert = sk_X509_value(ctx->chain, i);





        if (i > 0 && !check_key_level(ctx, cert) &&
            verify_cb_cert(ctx, cert, i, X509_V_ERR_CA_KEY_TOO_SMALL) == 0)
            return 0;




        if (i < num - 1 && !check_sig_level(ctx, cert) &&
            verify_cb_cert(ctx, cert, i, X509_V_ERR_CA_MD_TOO_WEAK) == 0)
            return 0;
    }
    return 1;
}
