
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ TS_VERIFY_CTX ;



int TS_VERIFY_CTX_add_flags(TS_VERIFY_CTX *ctx, int f)
{
    ctx->flags |= f;
    return ctx->flags;
}
