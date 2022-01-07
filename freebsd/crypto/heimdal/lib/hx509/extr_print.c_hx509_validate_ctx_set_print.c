
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_vprint_func ;
typedef TYPE_1__* hx509_validate_ctx ;
struct TYPE_3__ {void* ctx; int vprint_func; } ;



void
hx509_validate_ctx_set_print(hx509_validate_ctx ctx,
        hx509_vprint_func func,
        void *c)
{
    ctx->vprint_func = func;
    ctx->ctx = c;
}
