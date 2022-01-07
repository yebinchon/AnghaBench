
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_context ;
struct TYPE_3__ {int flags; } ;


 int HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK ;

void
hx509_verify_ctx_f_allow_best_before_signature_algs(hx509_context ctx,
          int boolean)
{
    if (boolean)
 ctx->flags &= ~HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK;
    else
 ctx->flags |= HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK;
}
