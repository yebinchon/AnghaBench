
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_sipc ;
struct TYPE_4__ {int (* release ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

void
heim_sipc_free_context(heim_sipc ctx)
{
    (ctx->release)(ctx);
}
