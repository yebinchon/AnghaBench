
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num_untrusted; TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_5__ {int purpose; int flags; int trust; } ;


 int X509_TRUST_NO_SS_COMPAT ;


 int X509_TRUST_UNTRUSTED ;
 int X509_V_ERR_INVALID_PURPOSE ;
 int X509_V_FLAG_X509_STRICT ;
 int X509_check_purpose (int *,int,int) ;
 int X509_check_trust (int *,int ,int ) ;
 int verify_cb_cert (TYPE_2__*,int *,int,int ) ;

__attribute__((used)) static int check_purpose(X509_STORE_CTX *ctx, X509 *x, int purpose, int depth,
                         int must_be_ca)
{
    int tr_ok = X509_TRUST_UNTRUSTED;
    if (depth >= ctx->num_untrusted && purpose == ctx->param->purpose)
        tr_ok = X509_check_trust(x, ctx->param->trust, X509_TRUST_NO_SS_COMPAT);

    switch (tr_ok) {
    case 128:
        return 1;
    case 129:
        break;
    default:
        switch (X509_check_purpose(x, purpose, must_be_ca > 0)) {
        case 1:
            return 1;
        case 0:
            break;
        default:
            if ((ctx->param->flags & X509_V_FLAG_X509_STRICT) == 0)
                return 1;
        }
        break;
    }

    return verify_cb_cert(ctx, x, depth, X509_V_ERR_INVALID_PURPOSE);
}
