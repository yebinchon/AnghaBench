
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_validate_ctx ;
struct TYPE_3__ {int flags; } ;



void
hx509_validate_ctx_add_flags(hx509_validate_ctx ctx, int flags)
{
    ctx->flags |= flags;
}
