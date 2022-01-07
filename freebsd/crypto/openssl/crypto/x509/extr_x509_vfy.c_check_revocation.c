
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error_depth; scalar_t__ parent; int chain; TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_5__ {int flags; } ;


 int X509_V_FLAG_CRL_CHECK ;
 int X509_V_FLAG_CRL_CHECK_ALL ;
 int check_cert (TYPE_2__*) ;
 int sk_X509_num (int ) ;

__attribute__((used)) static int check_revocation(X509_STORE_CTX *ctx)
{
    int i = 0, last = 0, ok = 0;
    if (!(ctx->param->flags & X509_V_FLAG_CRL_CHECK))
        return 1;
    if (ctx->param->flags & X509_V_FLAG_CRL_CHECK_ALL)
        last = sk_X509_num(ctx->chain) - 1;
    else {

        if (ctx->parent)
            return 1;
        last = 0;
    }
    for (i = 0; i <= last; i++) {
        ctx->error_depth = i;
        ok = check_cert(ctx);
        if (!ok)
            return ok;
    }
    return 1;
}
