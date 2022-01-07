
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_verify_ctx ;
struct TYPE_3__ {int flags; } ;


 int HX509_VERIFY_CTX_F_REQUIRE_RFC3280 ;

void
hx509_verify_set_strict_rfc3280_verification(hx509_verify_ctx ctx, int boolean)
{
    if (boolean)
 ctx->flags |= HX509_VERIFY_CTX_F_REQUIRE_RFC3280;
    else
 ctx->flags &= ~HX509_VERIFY_CTX_F_REQUIRE_RFC3280;
}
