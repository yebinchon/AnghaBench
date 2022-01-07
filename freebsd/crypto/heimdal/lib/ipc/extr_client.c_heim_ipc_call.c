
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* heim_ipc ;
typedef int heim_idata ;
typedef int * heim_icred ;
struct TYPE_5__ {int ctx; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* ipc ) (int ,int const*,int *,int **) ;} ;


 int stub1 (int ,int const*,int *,int **) ;

int
heim_ipc_call(heim_ipc ctx, const heim_idata *snd, heim_idata *rcv,
       heim_icred *cred)
{
    if (cred)
 *cred = ((void*)0);
    return (ctx->ops->ipc)(ctx->ctx, snd, rcv, cred);
}
