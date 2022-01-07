
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* heim_ipc ;
struct TYPE_6__ {int ctx; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* release ) (int ) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (int ) ;

void
heim_ipc_free_context(heim_ipc ctx)
{
    (ctx->ops->release)(ctx->ctx);
    free(ctx);
}
