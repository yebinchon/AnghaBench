
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* meth; } ;
typedef int COMP_METHOD ;
typedef TYPE_1__ COMP_CTX ;



const COMP_METHOD *COMP_CTX_get_method(const COMP_CTX *ctx)
{
    return ctx->meth;
}
