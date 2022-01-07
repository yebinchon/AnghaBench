
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_verify_ctx ;
struct TYPE_3__ {unsigned int max_depth; } ;



void
hx509_verify_set_max_depth(hx509_verify_ctx ctx, unsigned int max_depth)
{
    ctx->max_depth = max_depth;
}
