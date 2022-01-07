
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_context ;
struct TYPE_3__ {int flags; } ;


 int HX509_CTX_VERIFY_MISSING_OK ;

void
hx509_context_set_missing_revoke(hx509_context context, int flag)
{
    if (flag)
 context->flags |= HX509_CTX_VERIFY_MISSING_OK;
    else
 context->flags &= ~HX509_CTX_VERIFY_MISSING_OK;
}
